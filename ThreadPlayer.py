import math
import pathlib
import time
import sounddevice as sd
from pydub import AudioSegment
from PyQt5.QtCore import QThread, pyqtSignal


class ThreadPlayer(QThread):
    # region Signals
    sgn_lock = pyqtSignal(bool)
    sgn_timer = pyqtSignal(int)
    sgn_length = pyqtSignal(int)
    sgn_error = pyqtSignal(str, str)
    # endregion

    # region Initialise
    def __init__(self):
        # Audio Details
        self.__audio = None
        self.__audio_array = None
        self.__sample_rate = 0  # Frame rate in pydub
        self.__channels = 0

        self.__pointer = 0
        self.__length = 0

        # Condition Properties
        self.__is_playing = False
        self.__is_paused = False

        # Loop Properties
        self.__end = False
        self.__pause = False
        self.__stop = False
        self.__play = False
        self.__finish = False

        # Public Properties
        self.filename = None
        self.err = False

        # Super Constructor
        QThread.__init__(self)
    # endregion

    # region Timer
    # Timer to get seconds
    def __timer(self):
        # Loop for timer
        while not self.__end:
            # Pause
            if self.__pause:
                self.__is_playing = False
                self.__is_paused = True
                self.__pause = False
                sd.stop()

                self.sgn_lock.emit(False)

            # Stop
            elif self.__stop:
                self.__is_playing = False
                self.__is_paused = False
                self.__pointer = 0
                self.__stop = False
                sd.stop()

                self.sgn_timer.emit(self.__pointer)
                self.sgn_lock.emit(False)

            # Play
            elif self.__play:
                if self.__is_playing:
                    sd.stop()

                self.__is_playing = True
                self.__is_paused = False
                self.__play = False
                self.__finish = False

                play_frame = self.__pointer * self.__sample_rate * self.__channels
                sd.play(self.__audio_array[play_frame:], self.__sample_rate * self.__channels)

                self.sgn_timer.emit(self.__pointer)
                self.sgn_length.emit(self.__length)
                self.sgn_lock.emit(True)

            # If is Playing, Counter
            elif self.__is_playing:
                # If finish, Stop
                if self.__finish or self.__pointer >= self.__length:
                    self.__stop = True

                # If near to finish, wait shorter
                elif self.__length - 1 <= self.__pointer <= self.__length:
                    self.__finish = True
                    time.sleep(self.__length - self.__pointer)

                # Else counter
                else:
                    self.__pointer += 1
                    self.sgn_timer.emit(self.__pointer)
                    time.sleep(1)

            # Else still wait, prevent lags
            else:
                time.sleep(0.01)

    # End Timer
    def __end_timer(self):
        self.__end = True
    # endregion

    # region Play, Pause, Stop
    # Play Audio (From seconds)
    def play(self, seconds=0):
        self.__pointer = seconds
        self.__play = True

    # Pause Audio
    def pause(self):
        self.__pause = True

    # Stop Audio
    def stop(self):
        self.__stop = True
    # endregion

    # region Load / Unload
    # Load Audio
    def load(self, filename: pathlib.Path):
        try:
            print(filename)
            # Stop Before Read
            self.stop()

            # Read File
            self.__audio = AudioSegment.from_wav(filename)

            # Get Audio Details
            self.__audio_array = self.__audio.get_array_of_samples()
            self.__sample_rate = self.__audio.frame_rate
            self.__channels = self.__audio.channels
            self.__length = len(self.__audio_array) / self.__sample_rate / self.__channels

            # Emit Length
            self.sgn_length.emit(math.floor(self.__length))

            self.err = False

        except FileNotFoundError as exc:
            self.err = True
            self.sgn_error.emit("File Not Found!\n{}".format(exc.filename), "File Not Found Error")
    # endregion

    # Run
    def run(self):
        self.__timer()


class ThreadPlayer_Play(QThread):
    def __init__(self, player_thread: ThreadPlayer, seconds=0):
        self.player_thread = player_thread
        self.seconds = seconds
        QThread.__init__(self)

    def run(self):
        self.player_thread.play(self.seconds)


class ThreadPlayer_Pause(QThread):
    def __init__(self, player_thread: ThreadPlayer):
        self.player_thread = player_thread
        QThread.__init__(self)

    def run(self):
        self.player_thread.pause()


class ThreadPlayer_Stop(QThread):
    def __init__(self, player_thread: ThreadPlayer):
        self.player_thread = player_thread
        QThread.__init__(self)

    def run(self):
        self.player_thread.stop()


class ThreadPlayer_PlaySelected(QThread):
    def __init__(self, player_thread: ThreadPlayer, filename: pathlib.Path = None):
        self.player_thread = player_thread
        self.filename = filename
        QThread.__init__(self)

    def run(self):
        self.player_thread.stop()
        self.player_thread.load(self.filename)
        if not self.player_thread.err:
            self.player_thread.play()
