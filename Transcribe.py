import pathlib
from typing import Optional, Union
import numpy as np
import soundfile as sf
from Transcriber import Transcriber
import librosa
import torch
import math
import time
import FileOperations

MODELS = Transcriber.model_choice.keys()


class Transcribe:
    # region Properties
    print_msg: bool
    progress: float
    completed: bool
    exception: Optional[Exception]
    text_output: Optional[pathlib.Path]
    caption_output: Optional[pathlib.Path]
    cancel: bool
    # endregion

    # region INIT
    def __init__(self, audio_filename: pathlib.Path, destination_path: pathlib.Path = None,
                 temp_path: pathlib.Path = pathlib.Path("audio\\temp"), log_path: pathlib.Path = pathlib.Path("logs"),
                 model="English", print_msg=False, background_db=40):
        # Files
        self.__source = FileOperations.absolute_path(audio_filename)
        self.__filepath, self.__filename, self.__filetype = FileOperations.filename_separator(self.__source)

        # Get Destination Path
        if destination_path is None:
            self.__des_path = self.__filepath
        else:
            self.__des_path = FileOperations.absolute_path(destination_path)
            self.__des_path = FileOperations.get_directory(self.__des_path)
        self.__temp_path = FileOperations.absolute_path(temp_path)
        self.__log_path = FileOperations.absolute_path(log_path)

        # Other Properties
        if torch.cuda.is_available():
            device = "gpu"
        else:
            device = "cpu"
        self.__transcriber = Transcriber(model, device)
        self.__source_audio = None
        self.__sample_rate = None
        self.__captions = []
        self.__timestamps = []
        self.__loaded_timestamps = []

        self.__hop_len = 3072
        self.__frame_len = 2048
        self.__bg_db = background_db

        self.__segment_count = 0
        self.__last_time_used = 0
        self.__complete_count = 0
        self.__log = []

        # Public Properties
        self.print_msg = print_msg
        self.progress = 0
        self.completed = False
        self.exception = None
        self.text_output = None
        self.caption_output = None
    # endregion

    # Timecode Converter
    @staticmethod
    def timecode_converter(seconds):
        # Milliseconds
        milliseconds = math.floor(seconds % 1 * 1000)
        seconds = math.floor(seconds)

        # Minutes
        minutes = math.floor(seconds / 60)
        seconds %= 60

        # Hours
        hours = math.floor(minutes / 60)
        minutes %= 60

        return hours, minutes, seconds, milliseconds

    # Cancel
    def cancel_transcribe(self):
        self.cancel = True

    # region Split Recognition
    # Split Audio File
    def __split_audio(self):
        # Create directory if not exists
        FileOperations.check_directory(self.__temp_path)

        # Remove Files if exists
        FileOperations.remove_files(self.__temp_path, "{}*".format(self.__filename))
        FileOperations.remove_old_files(self.__temp_path)  # And remove old files

        try:
            # Split File
            print("Splitting File...")
            self.__source_audio, self.__sample_rate = librosa.load(self.__source)

            clips = librosa.effects.split(self.__source_audio, top_db=self.__bg_db,
                                          frame_length=self.__frame_len, hop_length=self.__hop_len)

            index = 1

            # Loop to Write Clips
            for c in clips:
                # Calculate Start Time (Leave some blank audio)
                if c[0] - self.__hop_len >= 0:
                    start = c[0] - self.__hop_len
                else:
                    start = 0

                # Calculate End Time (Leave some blank audio)
                if c[1] + self.__hop_len <= len(self.__source_audio):
                    end = c[1] + self.__hop_len
                else:
                    end = len(self.__source_audio)

                # Write Audio Clips
                clip_file = FileOperations.filename_combiner(self.__temp_path, self.__filename, 'wav', suffix=index)
                sf.write(clip_file, self.__source_audio[start:end], self.__sample_rate)
                if self.print_msg:
                    print("File Written: {0}".format(clip_file))

                # Calculate Timestamps
                timecode_start = c[0]
                timecode_end = c[1]

                # Record Timestamps
                self.__timestamps.append({'start': timecode_start, 'end': timecode_end})
                index += 1

            # Write Segment Count
            self.__segment_count = index - 1  # Index = File Count + 1, Since add 1 after last one

        except FileNotFoundError as exc:
            self.exception = exc
            raise exc

    # File Recognition
    def __file_recognition(self, audio: Union[pathlib.Path, np.ndarray], index, auto_split=True):
        # Transcribe
        transcribed = self.__transcriber.transcribe(str(audio), auto_split)

        # If more than one sentence, split
        if auto_split and len(transcribed['segments']) > 1:
            transcribed_list = []

            if index > -1:
                # If split first time, backup timestamp
                if not self.__loaded_timestamps:
                    self.__loaded_timestamps = self.__timestamps.copy()

                # Get timecode for transcribing audio clip
                first_index = index + len(self.__timestamps) - len(self.__loaded_timestamps)
                first_start = self.__loaded_timestamps[index]['start']
                last_end = self.__loaded_timestamps[index]['end']

                # Pop out original timecode
                self.__timestamps.pop(first_index)

            # Else is full recognition
            else:
                first_index = 0
                first_start = 0
                last_end = -1

            # Loop to get each segment
            for segment in transcribed['segments']:
                # Get segment timeframe
                current_id = first_index + segment['id']
                segment_start = first_start + round(segment['start'] * self.__sample_rate)
                segment_end = first_start + round(segment['end'] * self.__sample_rate)

                # If segment ends longer than true end, cut to true end
                if index > -1 and segment_end > last_end:
                    segment_end = last_end

                # Append Timecode and Caption
                self.__timestamps.insert(current_id, {'start': segment_start, 'end': segment_end})
                transcribed_list.append(segment['text'].strip())

                # Print if Required
                if self.print_msg:
                    print("Transcribed:", segment['text'].strip())

            return transcribed_list

        else:
            # Print if Required
            if self.print_msg:
                print("Transcribed:", transcribed['text'].strip())

            return transcribed['text'].strip()

    # Speech Recognition - Splitting
    def speech_recognition_split(self):
        try:
            # Initialise
            self.completed = False
            self.__captions = []
            self.cancel = False

            # Split Audio
            self.__split_audio()

            # Performance Timer
            start_time = time.perf_counter()

            # Loop to call file recognition
            for index in range(1, self.__segment_count + 1):  # (+ 1) to include last one
                if self.cancel:
                    break

                # Call for Recognition
                audio_clip = FileOperations.filename_combiner(self.__temp_path, self.__filename, 'wav', suffix=index)
                transcribed = self.__file_recognition(audio_clip, index-1)

                # Append Captions
                if type(transcribed) is list:
                    self.__captions += transcribed
                else:
                    self.__captions.append(transcribed)

                # Add Progress
                self.__complete_count += 1
                self.progress = round(self.__complete_count / self.__segment_count, 2)

            # Calculate Time Used
            self.__last_time_used = time.perf_counter() - start_time
            print("Time Used: {0:.2f} seconds".format(self.__last_time_used))

            # Write Output
            if not self.cancel:
                self.text_output = FileOperations.absolute_path(self.__output_text())
                self.caption_output = FileOperations.absolute_path(self.__output_caption())
                self.__output_log("Full Recognition", self.text_output, self.caption_output)
            self.completed = True

        except FileNotFoundError as exc:
            self.exception = exc
            raise exc
    # endregion

    # region Full Recognition
    def speech_recognition_full(self):
        try:
            # Initialise
            self.completed = False
            self.__captions = []
            self.cancel = False

            # Performance Timer
            start_time = time.perf_counter()

            # Run only if not cancelled
            if not self.cancel:
                # Call for Recognition
                transcribed = self.__file_recognition(self.__source, -1)

                # Fetch Captions
                self.__captions.append(transcribed)

            # Calculate Time Used
            self.__last_time_used = time.perf_counter() - start_time
            print("Time Used: {0:.2f} seconds".format(self.__last_time_used))

            if not self.cancel:
                # Write Output
                self.text_output = FileOperations.absolute_path(self.__output_text())
                self.caption_output = FileOperations.absolute_path(self.__output_caption())
                self.__output_log("Full Recognition", self.text_output, self.caption_output)
            self.completed = True

        except FileNotFoundError as exc:
            print("File Not Found!", exc.filename)
    # endregion

    # region Output
    # Write Caption Text
    def __output_text(self):
        try:
            # Print
            if self.print_msg:
                print('\n'.join(self.__captions))

            # Write to file
            destination_file = FileOperations.filename_combiner(self.__des_path, self.__filename, "txt")
            FileOperations.check_directory(self.__des_path)
            if self.__captions:
                with open(destination_file, 'w', encoding='utf-8') as file:
                    file.write('\n'.join(self.__captions))

            return destination_file

        except FileNotFoundError as exc:
            print("File Not Found!", exc.filename)

    # Write Timecode
    def __output_caption(self):
        caption_srt = []
        caption_line = 1

        if self.__captions:
            try:
                # Loop over all timestamps and caption
                for index, value in enumerate(self.__timestamps):
                    # Write only if there is caption in the timestamp
                    if self.__captions[index] != "" and self.__captions[index] != "......":
                        # Get Timecodes
                        start, end = value.values()
                        start_h, start_m, start_s, start_ms = self.timecode_converter(start / self.__sample_rate)
                        end_h, end_m, end_s, end_ms = self.timecode_converter(end / self.__sample_rate)

                        timecode = "{0:02d}:{1:02d}:{2:02d},{3:03d} --> {4:02d}:{5:02d}:{6:02d},{7:03d}".format(
                            start_h, start_m, start_s, start_ms, end_h, end_m, end_s, end_ms)

                        # Join Caption
                        caption_message = "{0}\n{1}\n{2}\n".format(caption_line, timecode, self.__captions[index])
                        caption_srt.append(caption_message)

                        caption_line += 1

                # Write Caption
                destination_file = FileOperations.filename_combiner(self.__des_path, self.__filename, "srt")
                FileOperations.check_directory(self.__des_path)
                with open(destination_file, 'w', encoding='utf-8') as file:
                    file.write('\n'.join(caption_srt))

                return destination_file

            except FileNotFoundError as exc:
                print("File Not Found!", exc.filename)

    # Write Log
    def __output_log(self, recognition_type, text_destination, caption_destination):
        self.__log = []
        self.__log.append("Type: {}".format(recognition_type))
        self.__log.append("Source: {}".format(self.__source))
        self.__log.append("Destination (Text): {}".format(text_destination))
        self.__log.append("Destination (Caption): {}".format(caption_destination))
        self.__log.append("Time Used: {:.2f} seconds".format(self.__last_time_used))

        FileOperations.output_log("Speech Recognition", self.__log, self.__log_path)
    # endregion
