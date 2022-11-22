import pathlib
from proglog import ProgressBarLogger
from typing import Optional
from pydub import AudioSegment
from moviepy.editor import *
import FileOperations


class FileImport:
    # region Properties
    completed: bool
    exception: Optional[Exception]
    output: pathlib.Path
    percentage: float
    sound_conversion: bool
    # endregion

    # region INIT
    def __init__(self, source: pathlib.Path, destination: pathlib.Path = pathlib.Path("audio\\imports"),
                 log_path: pathlib.Path = pathlib.Path("logs")):
        # File
        self.__source = FileOperations.absolute_path(source)
        self.__filepath, self.__filename, self.__filetype = FileOperations.filename_separator(self.__source)
        self.__des_path = FileOperations.absolute_path(destination)
        self.__log_path = FileOperations.absolute_path(log_path)

        # Other Properties
        self.__sound = None
        self.__log = []

        # Public Properties
        self.completed = False
        self.exception = None
        self.percentage = 0
        self.sound_conversion = False
        self.output = FileOperations.filename_combiner(self.__des_path, self.__filename, "wav")
    # endregion

    # region Convert Audio (Backend)
    def __convert_mp3(self):
        self.__sound = AudioSegment.from_mp3(self.__source)

    def __convert_ogg(self):
        self.__sound = AudioSegment.from_ogg(self.__source)

    def __convert_m4a(self):
        self.__sound = AudioSegment.from_file(self.__source, format="m4a")
    # endregion

    # region Convert Video (Backend)
    def __convert_video(self):
        video = VideoFileClip(str(self.__source))
        if video.audio:
            with video.audio as audio:
                my_logger = CustomLogger(self)
                audio.write_audiofile(str(self.output), logger=my_logger)
        else:
            self.exception = InvalidAudioException("No Audio Found in Video!")
            raise InvalidAudioException("No Audio Found in Video!")
    # endregion

    # region Convert Method
    def convert(self):
        # Reset Percentage
        self.percentage = 0
        self.sound_conversion = False

        # Initialise
        supported_video = ["mp4", "mkv", "mov"]
        sound_converted = False

        # Make directory if not exist
        FileOperations.check_directory(self.__des_path)

        # Convert depends on type
        if self.__filetype in supported_video:
            self.__convert_video()
        else:
            if self.__filetype == "mp3":
                self.__convert_mp3()
                sound_converted = True
            elif self.__filetype == "ogg":
                self.__convert_ogg()
                sound_converted = True
            elif self.__filetype == "m4a":
                self.__convert_m4a()
                sound_converted = True
            elif self.__filetype == "wav":  # No Conversion
                self.output = self.__source
            else:
                self.exception = InvalidAudioException("File Type Not Supported!")
                raise InvalidAudioException("File Type Not Supported!")

        if sound_converted:
            self.sound_conversion = True
            self.__sound.export(self.output, format="wav")

        self.__output_log()
        self.completed = True
        print("File Converted: {}".format(self.output))
    # endregion

    # region Output
    # Write Log
    def __output_log(self):
        self.__log = []
        self.__log.append("Source: {}".format(self.__source))
        self.__log.append("Output: {}".format(self.output))
        if self.__source == self.output:
            self.__log.append("No Conversion!")

        FileOperations.output_log("File Import", self.__log, self.__log_path)
    # endregion


class InvalidAudioException(Exception):
    pass


# Custom Logger to get Conversion Progress (For Video Conversion Only)
class CustomLogger(ProgressBarLogger):
    def __init__(self, obj: FileImport):
        super().__init__(init_state=None, bars=None, ignored_bars=None,
                         logged_bars='all', min_time_interval=0, ignore_bars_under=0)
        self.obj = obj

    def bars_callback(self, bar, attr, value, old_value=None):
        try:
            # Get Value
            index = self.state['bars'][bar]['index']
            total = self.state['bars'][bar]['total']

            # Calculate Percentage
            percent_complete = round(index / total, 2)
            if percent_complete < 0:
                percent_complete = 0
            if percent_complete > 1:
                percent_complete = 1

        except ZeroDivisionError:
            percent_complete = 1

        # Update into Target Object
        self.obj.percentage = percent_complete
