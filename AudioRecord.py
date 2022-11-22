import pathlib
import pyaudio as pa
import wave
import time
import FileOperations
from datetime import datetime
from threading import Thread


class Recording:
    # region Public Properties
    is_recording: bool
    seconds: int
    completed: bool
    output: pathlib.Path
    # endregion

    # region Initialise
    def __init__(self, filename="recording_{}".format(datetime.now().strftime("%y_%m_%d_%H_%M_%S")),
                 output_path: pathlib.Path = pathlib.Path("audio\\recordings"),
                 log_path: pathlib.Path = pathlib.Path("logs"),
                 chunk=1024, sample_format=pa.paInt16, channels=1, sample_rate=44100):
        # Files
        self.__filename = filename
        self.__des_path = FileOperations.absolute_path(output_path)
        self.__log_path = FileOperations.absolute_path(log_path)

        # Audio Properties
        self.__chunk = chunk
        self.__sample_format = sample_format
        self.__channels = channels
        self.__sample_rate = sample_rate

        # Other Properties
        self.__audio_frames = []
        self.__pyaudio = pa.PyAudio()
        self.__record_thread = None
        self.__message_thread = None
        self.__log = []

        # Public Properties
        self.is_recording = False
        self.completed = False
        self.seconds = 0
        self.output = FileOperations.filename_combiner(self.__des_path, filename, "wav")
    # endregion

    # region Recording (Backend)
    def __recording(self):
        # Open stream
        self.__audio_frames = []
        self.seconds = 0

        pyaudio = pa.PyAudio()
        stream = pyaudio.open(format=self.__sample_format, channels=self.__channels, rate=self.__sample_rate,
                              frames_per_buffer=self.__chunk, input=True)

        # Loop input until stop
        try:
            # Start
            self.is_recording = True
            print("Recording Started!")

            # Message
            self.__message_thread = Thread(target=self.__recording_message)
            self.__message_thread.start()

            # Record
            while self.is_recording:
                self.__audio_frames.append(stream.read(self.__chunk))
                self.seconds += self.__chunk / self.__sample_rate

        except KeyboardInterrupt:
            self.stop()

        finally:
            # Stop Process
            stream.stop_stream()
            stream.close()
            pyaudio.terminate()

    def __recording_message(self):
        message = "\rRecording."
        index = 1

        while self.is_recording:
            print("{0}{1}".format(message, "." * (index % 5)), end='')
            time.sleep(1)
            index += 1

        print()
    # endregion

    # region Start / Stop
    def start(self):
        # If recording, return
        if self.is_recording:
            print("It is already recording!")
        elif self.completed:
            print("Recording is already completed!")
        else:
            self.completed = False
            self.__record_thread = Thread(target=self.__recording)
            self.__record_thread.start()

    def stop(self):
        # If recording and not stopping, stop recording
        if not self.is_recording:
            print("Recording is not started")

        else:
            # Stop Recording
            self.is_recording = False
            self.__record_thread.join()
            self.__message_thread.join()
            self.completed = True
            print("Recording Stopped!")

            # Save File
            self.__save_file()
            self.__output_log()

            # Print Message
            print("Finished Recording! Total: {:.3f} seconds".format(self.seconds))
    # endregion

    # region Output
    def __save_file(self):
        # If not recording, Save File
        if self.completed and not self.is_recording:
            # Create Directory if not exists
            FileOperations.check_directory(self.__des_path)

            # Save File
            try:
                with wave.open(str(self.output), 'wb') as file:
                    file.setnchannels(self.__channels)
                    file.setsampwidth(self.__pyaudio.get_sample_size(self.__sample_format))
                    file.setframerate(self.__sample_rate)
                    file.writeframes(b''.join(self.__audio_frames))

                print("Output File:", self.output)

            except FileNotFoundError as exc:
                print("Unable to write file!", exc.filename)

    # Write Log
    def __output_log(self):
        self.__log = []
        self.__log.append("Filename: {}".format(self.output))
        self.__log.append("Length: {:.3f} seconds".format(self.seconds))

        FileOperations.output_log("Audio Recording", self.__log, self.__log_path)
    # endregion
