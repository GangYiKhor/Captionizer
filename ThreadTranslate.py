import pathlib
import time
import queue

import httpcore

import FileOperations
from threading import Thread
from Translate import Translate
from PyQt5.QtCore import QThread, pyqtSignal


class ThreadTranslate(QThread):
    # region Signals
    sgn_lock = pyqtSignal(bool)
    sgn_progress = pyqtSignal(str, int)
    sgn_finished = pyqtSignal(list, list)
    sgn_err = pyqtSignal(str, str)
    # endregion

    # region Initialise
    def __init__(self, files: list, output_path: pathlib.Path = None, log_path: pathlib.Path = pathlib.Path("logs"),
                 src_lang='Auto', des_lang='English', model_translator=True, model_name="English-Malay"):
        self.__files = files.copy()
        if output_path is None:
            self.__output_path = None
        else:
            self.__output_path = FileOperations.absolute_path(output_path)
        self.__log_path = FileOperations.absolute_path(log_path)
        self.__src_language = src_lang
        self.__des_language = des_lang
        self.__model_translator = model_translator
        self.__model_name = model_name

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
    def __update_progress(self, string, in_between: float = 0):
        try:
            percent = round((self.__file_complete + in_between) / self.__file_count * 100)
        except ZeroDivisionError:
            percent = 100
        self.__progress(string, percent)
    # endregion

    # Translation Process
    def __start_translate(self):
        # Declaration
        source = None
        in_process = False
        thread_exec = None
        translator = None

        # Loop for all files
        while self.__queue.unfinished_tasks > 0:
            try:
                # If cancel, Signal and Stop
                if self.__cancel:
                    if in_process:
                        translator.cancel_translate()
                        time.sleep(1)
                    else:
                        print(f'Translation thread has been cancelled!')
                        self.__progress("Cancelled!", 100)
                        return

                # If not in process, Start translate
                if not in_process:

                    # Get from Queue
                    source = self.__queue.get(block=True, timeout=1)

                    # Get Output Path, Output beside original file if no path stated
                    if str(self.__output_path) == '.' or self.__output_path is None:
                        output_path = source
                    else:
                        output_path = self.__output_path
                    output_path = FileOperations.get_directory(output_path)

                    # Call for Translation
                    translator = Translate(source, output_path, self.__log_path,
                                           self.__src_language, self.__des_language,
                                           self.__model_translator, self.__model_name)
                    thread_exec = Thread(target=translator.translate, daemon=True)
                    thread_exec.start()
                    in_process = True

                elif translator.completed:
                    # Stop Thread
                    thread_exec.join(timeout=1)
                    if thread_exec.is_alive():
                        continue
                    in_process = False

                    if self.__cancel and translator.cancel:
                        print(f'Translation thread has been cancelled!')
                        self.__progress("Cancelled!", 100)
                        return

                    # Set Task Done
                    self.__completed_file.append(source)
                    self.__output_file.append(translator.output)
                    self.__queue.task_done()
                    self.__file_complete += 1

                    # Update Progress
                    self.__update_progress(source)

                    # Print Output
                    print(f'{source} translation done!')

                elif translator.exception:
                    # Stop Thread
                    thread_exec.join(timeout=1)
                    raise translator.exception

                else:
                    # Random Progress
                    self.__update_progress(source, translator.percentage)
                    time.sleep(1)

            except (httpcore.ReadTimeout, httpcore.ConnectTimeout):
                self.sgn_error.emit("Unable to Connect to Google Translate\n"
                                    "Please try again later!\n"
                                    "(May be due to IP Blocked by Google for Bulk Translation)", "Connection Error")

                # Set Task Done
                self.__completed_file.append(source)
                self.__output_file.append(translator.output)
                self.__queue.task_done()
                self.__file_complete += 1
                in_process = False
                self.__cancel = True

                # Update Progress
                self.__update_progress(source)

                # Print Output
                print(f'{source} translation skipped!')

            # Stop if Queue is Empty
            except queue.Empty:
                break

        # Finished
        print(f'Translation thread has completed!')
        self.__progress("Completed!", 100)

    # Enqueue
    def __enqueue(self, files: list):
        for source in files:
            self.__queue.put(FileOperations.absolute_path(source))
            self.__file_count += 1

    # Run
    def run(self):
        self.__progress("Starting...", 1)
        self.sgn_lock.emit(True)
        self.__enqueue(self.__files)
        self.__start_translate()
        self.sgn_lock.emit(False)
        self.sgn_finished.emit(self.__completed_file, self.__output_file)

    # Cancel
    def cancel(self):
        self.__cancel = True


class ThreadTranslate_Cancel(QThread):
    # region Signals
    sgn_cancelled = pyqtSignal()
    # endregion

    def __init__(self, translate_thread: ThreadTranslate):
        self.translate_thread = translate_thread
        QThread.__init__(self)

    def run(self):
        self.translate_thread.cancel()
        self.sgn_cancelled.emit()
