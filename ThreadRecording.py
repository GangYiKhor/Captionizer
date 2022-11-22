import pathlib
import time
import FileOperations
from AudioRecord import Recording
from PyQt5.QtCore import QThread, pyqtSignal


class ThreadRecording(QThread):
    # region Signals
    sgn_lock = pyqtSignal(bool)
    sgn_timer = pyqtSignal(int)
    sgn_length = pyqtSignal(int)
    sgn_finished = pyqtSignal(pathlib.Path)
    # endregion

    # region Initialise
    def __init__(self, path: pathlib.Path = pathlib.Path("audio\\recordings"),
                 log_path: pathlib.Path = pathlib.Path("logs"), timeout=3600):
        self.__timeout = timeout
        self.__log_path = FileOperations.absolute_path(log_path)
        self.__recorder = Recording(output_path=FileOperations.absolute_path(path), log_path=self.__log_path)
        self.__is_recording = False
        self.__completed = False
        self.__stop = False
        self.__seconds = 0
        self.__output = ""
        QThread.__init__(self)
    # endregion

    # region Record
    # Start Record
    def __start_record(self):
        # Start Recording
        self.__recorder.start()
        self.__is_recording = True

    # Timer Loop
    def __timer(self):
        while self.__is_recording and not self.__stop:
            # Timer For Player
            time.sleep(1)
            self.__seconds += 1
            self.sgn_timer.emit(self.__seconds)

            # Stop if Timeout
            if self.__seconds == self.__timeout:
                self.stop()

    # Finish Up
    def __finish(self):
        # Get Output
        self.__recorder.stop()
        self.__is_recording = False
        self.__output = self.__recorder.output
    # endregion

    # Run
    def run(self):
        self.sgn_lock.emit(True)
        self.sgn_timer.emit(0)
        self.sgn_length.emit(self.__timeout)
        self.__start_record()
        self.__timer()
        self.__finish()
        self.sgn_lock.emit(False)
        self.sgn_finished.emit(self.__output)

    # Stop
    def stop(self):
        self.__stop = True


class ThreadRecording_Stop(QThread):
    def __init__(self, recording_thread: ThreadRecording):
        self.recording_thread = recording_thread
        QThread.__init__(self)

    def run(self):
        self.recording_thread.stop()
