import math
import pathlib
import random
import time
import queue
from threading import Thread
import FileOperations
from FileImports import FileImport, InvalidAudioException
from PyQt5.QtCore import QThread, pyqtSignal


class ThreadConversion(QThread):
    # region Signals
    sgn_lock = pyqtSignal(bool)
    sgn_progress = pyqtSignal(str, int)
    sgn_finished = pyqtSignal(dict)
    sgn_invalid_audio = pyqtSignal(str, pathlib.Path)
    # endregion

    # region Initialise
    def __init__(self, file_list: list, des_path: pathlib.Path = pathlib.Path("audio\\imports"),
                 log_path: pathlib.Path = pathlib.Path("logs")):
        self.file_list = file_list.copy()
        self.__queue = queue.Queue()
        self.__file_count = 0
        self.__file_complete = 0
        self.__output_dict = {}
        self.__des_path = FileOperations.get_directory(des_path)
        self.__log_path = FileOperations.absolute_path(log_path)
        self.__cancel = False
        self.__current_pgr = 1
        QThread.__init__(self)
    # endregion

    # region Progress
    # Set Progress
    def __progress(self, string, percent):
        self.sgn_progress.emit(str(string), percent)
        self.__current_pgr = percent

    # Random Progress
    def __random_progress(self, string):
        try:
            a = self.__current_pgr
            b = round((self.__file_complete + 1) / self.__file_count * 100)
            b = 99 if b > 99 else b
            percent = int(math.floor(a + (b - a + 1) * (1.0 - random.random() ** (1.0 / 4.0))))

        except ZeroDivisionError:
            percent = 100

        self.__progress(string, percent)

    # Update Progress
    def __update_progress(self, string, in_between=0.0):
        try:
            percent = round((self.__file_complete + in_between) / self.__file_count * 100)

        except ZeroDivisionError:
            percent = 100

        self.__progress(string, percent)
    # endregion

    # Convert Files
    def __convert(self):
        # Declaration
        in_process = False
        file_source = None
        file_import = None
        thread_exec = None

        while self.__queue.not_empty or not self.__queue.all_tasks_done:
            try:
                if not in_process:
                    # If Cancel, Quit
                    if self.__cancel:
                        print(f'Conversion thread has been cancelled!')
                        self.__progress("Cancelled!", 100)
                        return

                    # Get Source from Queue
                    file_source = self.__queue.get(block=True, timeout=1)

                    # Perform Conversion
                    file_import = FileImport(file_source, self.__des_path, self.__log_path)
                    thread_exec = Thread(target=file_import.convert, daemon=True)
                    thread_exec.start()
                    in_process = True

                elif file_import.completed:
                    # Stop Thread
                    thread_exec.join(timeout=1)
                    if thread_exec.is_alive():
                        continue
                    in_process = False

                    # Set Output
                    self.__output_dict[file_source] = [file_import.output, file_source]

                    # Set Task Done
                    self.__queue.task_done()
                    self.__file_complete += 1

                    # Get Progress
                    self.__update_progress(file_source)

                    # Print Output
                    print(f'{file_source} conversion done!')

                elif file_import.exception:
                    # Stop Thread
                    thread_exec.join(timeout=1)
                    raise file_import.exception

                else:
                    # If Audio Conversion, Random Progress
                    if file_import.sound_conversion:
                        self.__random_progress(file_source)

                    # If Video Conversion, Get Progress
                    else:
                        self.__update_progress(file_source, file_import.percentage)

                    # Sleep
                    time.sleep(1)

            # Exception if Audio is Missing
            except InvalidAudioException as exc:
                self.sgn_invalid_audio.emit("File Excluded!\n[{0}]: {1}".format(file_source, exc), file_source)

                # Set Task Done
                self.__queue.task_done()
                self.__file_complete += 1
                in_process = False

                # Get Progress
                self.__update_progress(file_source)

                # Print Output
                print(f'{file_source} conversion skipped!')

            # Stop if Queue is Empty
            except queue.Empty:
                break

        print(f'Conversion thread has completed!')
        self.__progress("Completed!", 100)

    # Enqueue
    def __enqueue(self, sources: list):
        for source in sources:
            self.__queue.put(FileOperations.absolute_path(source))
            self.__file_count += 1

    # Run
    def run(self):
        self.__progress("Starting...", 1)
        self.sgn_lock.emit(True)
        self.__enqueue(self.file_list)
        self.__convert()
        self.sgn_lock.emit(False)
        self.sgn_finished.emit(self.__output_dict)

    # Cancel
    def cancel(self):
        self.__cancel = True


class ThreadConversion_Cancel(QThread):
    # region Signals
    sgn_cancelled = pyqtSignal()
    # endregion

    def __init__(self, conversion_thread: ThreadConversion):
        self.conversion_thread = conversion_thread
        QThread.__init__(self)

    def run(self):
        self.conversion_thread.cancel()
        self.sgn_cancelled.emit()
