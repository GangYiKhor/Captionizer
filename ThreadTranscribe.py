import pathlib
import time
import queue
import FileOperations
from threading import Thread
from Transcribe import Transcribe
from PyQt5.QtCore import QThread, pyqtSignal


class ThreadTranscribe(QThread):
    # region Signals
    sgn_lock = pyqtSignal(bool)
    sgn_progress = pyqtSignal(str, int)
    sgn_finished = pyqtSignal(list, list)
    sgn_error = pyqtSignal(str, str)
    # endregion

    # region Initialise
    def __init__(self, files: dict, output_path: pathlib.Path = None,
                 temp_path: pathlib.Path = pathlib.Path("audio\\temp"), log_path: pathlib.Path = pathlib.Path("logs"),
                 split=True, model="English"):
        self.__files = files.copy()
        if output_path is None:
            self.__output_path = None
        else:
            self.__output_path = FileOperations.absolute_path(output_path)
        self.__temp_path = FileOperations.absolute_path(temp_path)
        self.__log_path = FileOperations.absolute_path(log_path)
        self.__split = split
        self.__model = model

        self.__queue = queue.Queue()
        self.__completed_file = []
        self.__output_file = []

        self.__cancel = False
        self.__file_count = 0
        self.__file_complete = 0
        self.__current_pgr = 1

        QThread.__init__(self)
    # endregion

    # region Progress
    # Set Progress
    def __progress(self, string, percent):
        # If new progress larger then current progress, set to new progress
        if percent > self.__current_pgr:
            self.__current_pgr = percent

        # Emit progress
        self.sgn_progress.emit(str(string), self.__current_pgr)

    # Update Progress
    def __update_progress(self, string, in_progress: float = 0):
        try:
            percent = round((self.__file_complete + in_progress) / self.__file_count * 100)
        except ZeroDivisionError:
            percent = 100
        self.__progress(string, percent)
    # endregion

    # Transcription Process
    def __start_transcribe(self):
        # Declaration
        source = None
        file_loc = None
        in_process = False
        recognizer = None
        thread_exec = None

        # Loop for all files
        while self.__queue.unfinished_tasks > 0:
            try:
                # If cancel, Signal and Stop
                if self.__cancel:
                    if in_process:
                        recognizer.cancel_transcribe()
                        time.sleep(1)
                    else:
                        print(f'Transcription thread has been cancelled!')
                        self.__progress("Cancelled!", 100)
                        return

                # If not in process, Start transcribe
                if not in_process:

                    # Get from Queue
                    source, file_loc, caption_path = self.__queue.get(block=True, timeout=1)

                    # Get Output Path, Output beside original media if no path stated
                    if self.__output_path is not None and str(self.__output_path) != '.':
                        caption_path = self.__output_path
                    caption_path = FileOperations.get_directory(caption_path)

                    # Call for Speech Recognition
                    recognizer = Transcribe(file_loc, caption_path, self.__temp_path,
                                            self.__log_path, self.__model)
                    if self.__split:
                        thread_exec = Thread(target=recognizer.speech_recognition_split, daemon=True)
                    else:
                        thread_exec = Thread(target=recognizer.speech_recognition_full, daemon=True)
                    thread_exec.start()
                    in_process = True

                elif recognizer.completed:
                    # Stop Thread
                    thread_exec.join(timeout=1)
                    if thread_exec.is_alive():
                        continue
                    in_process = False

                    if self.__cancel and recognizer.cancel:
                        print(f'Transcription thread has been cancelled!')
                        self.__progress("Cancelled!", 100)
                        return

                    # Set Task Done
                    # If source is directory, it is recording, append its file loc instead
                    if source.is_dir():
                        self.__completed_file.append(file_loc)
                    else:
                        self.__completed_file.append(source)
                    self.__output_file.append(recognizer.caption_output)
                    self.__queue.task_done()
                    self.__file_complete += 1

                    # Update Progress
                    self.__update_progress(source)

                    # Print Output
                    print(f'{source} transcription done!')

                elif recognizer.exception:
                    # Stop Thread
                    thread_exec.join(timeout=1)
                    raise recognizer.exception

                else:
                    # Update Progress
                    self.__update_progress(source, recognizer.progress)
                    time.sleep(1)

            # File Not Found Exception
            except FileNotFoundError as exc:
                self.sgn_error.emit(f"File not found!\n{exc.filename}", "File Not Found")

                # Set Task Done
                self.__queue.task_done()
                self.__file_complete += 1
                in_process = False

                # Get Progress
                self.__update_progress(source)

                # Print Output
                print(f'{source} transcription skipped!')

            # Stop if Queue is Empty
            except queue.Empty:
                break

        # Finished
        print(f'Transcription thread has completed!')
        self.__progress("Completed!", 100)

    # Enqueue
    def __enqueue(self, files: dict):
        for key, value in files.items():
            self.__queue.put((FileOperations.absolute_path(key),
                              FileOperations.absolute_path(value[0]),
                              FileOperations.absolute_path(value[1])))
            self.__file_count += 1
        time.sleep(0)  # Await queue

    # Run
    def run(self):
        self.__progress("Starting...", 1)
        self.sgn_lock.emit(True)
        self.__enqueue(self.__files)
        self.__start_transcribe()
        self.sgn_lock.emit(False)
        self.sgn_finished.emit(self.__completed_file, self.__output_file)

    # Cancel
    def cancel(self):
        self.__cancel = True


class ThreadTranscribe_Cancel(QThread):
    # region Signals
    sgn_cancelled = pyqtSignal()
    # endregion

    def __init__(self, transcribe_thread: ThreadTranscribe):
        self.transcribe_thread = transcribe_thread
        QThread.__init__(self)

    def run(self):
        self.transcribe_thread.cancel()
        self.sgn_cancelled.emit()
