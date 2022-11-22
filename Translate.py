import pathlib
from typing import Optional
import httpcore
from googletrans import Translator
from ModelTranslator import ModelTranslator
import FileOperations

# Constant Language Code - {Language Name: Language Code}
LANG_CHOICES = {
    'Auto': 'auto',
    'Afrikaans': 'af',
    'Chinese (Simplified)': 'zh-cn',
    'Chinese (Traditional)': 'zh-tw',
    'Dutch': 'nl',
    'English': 'en',
    'Filipino': 'tl',
    'Finnish': 'fi',
    'Hawaiian': 'haw',
    'Hungarian': 'hu',
    'Indonesian': 'id',
    'Japanese': 'ja',
    'Javanese': 'jw',
    'Korean': 'ko',
    'Lao': 'lo',
    'Malay': 'ms',
    'Myanmar (burmese)': 'my',
    'Nepali': 'ne',
    'Persian': 'fa',
    'Samoan': 'sm',
    'Tamil': 'ta',
    'Thai': 'th',
    'Turkish': 'tr'
}


class Translate:
    # region Properties
    # Public Properties
    percentage: float
    completed: bool
    exception: Optional[Exception]
    output: pathlib.Path
    cancel: bool
    # endregion

    # region Initialise
    def __init__(self, source: pathlib.Path, destination: pathlib.Path = None,
                 log_path: pathlib.Path = pathlib.Path("logs"), src_language='Auto', des_language="English",
                 model_translator=True, model_name="English-Malay"):
        # File
        self.__source = FileOperations.absolute_path(source)
        self.__filepath, self.__filename, self.__filetype = FileOperations.filename_separator(self.__source)

        if destination is None:
            self.__des_path = self.__filepath
        else:
            self.__des_path = FileOperations.absolute_path(destination)
        self.__log_path = FileOperations.absolute_path(log_path)

        # Translator
        self.__src_language = LANG_CHOICES[src_language]
        self.__des_language = LANG_CHOICES[des_language]
        self.__model_translator = model_translator
        if model_translator:
            self.__translator = ModelTranslator(model_name)
            des_language = model_name.split('-')[1]
            if ' ' in des_language:
                des_language = des_language[:des_language.index(' ')]
        else:
            self.__translator = Translator()

        # Other Properties
        self.__log = []
        self.__source_text = []
        self.__translated = []
        self.__text_count = 0
        self.__completed_count = 0

        # Public Properties
        self.percentage = 0
        self.completed = False
        self.exception = None
        self.output = FileOperations.filename_combiner(self.__des_path, self.__filename, self.__filetype, des_language)
    # endregion

    # Cancel
    def cancel_translate(self):
        self.cancel = True

    # region Read File
    # Read Source File for Texts
    def __read_text(self):
        try:
            # Read Text
            with open(self.__source, 'r') as file:
                self.__source_text = file.read().splitlines()

            # Count Length
            self.__text_count = len(self.__source_text)

        except FileNotFoundError as exc:
            self.exception = exc
            raise exc
    # endregion

    # region Translate (Backend)
    # Translate TXT Files
    def __translate_txt(self):
        try:
            # If Using Model, Call Model.Translate(Text)
            if self.__model_translator:
                for caption in self.__source_text:
                    # Stop if cancel
                    if self.cancel:
                        break

                    # Translate
                    text = ""
                    if caption:
                        text = self.__translator.translate(caption)
                    self.__translated.append(text)

                    # Update Progress
                    self.__completed_count += 1
                    self.percentage = round(self.__completed_count / self.__text_count, 2)
            else:
                # Translate lines and append
                for caption in self.__source_text:
                    # Stop if cancel
                    if self.cancel:
                        break

                    # Translate
                    text = ""
                    if caption:
                        text = self.__translator.translate(caption, src=self.__src_language,
                                                           dest=self.__des_language).text
                    self.__translated.append(text)

                    # Update Progress
                    self.__completed_count += 1
                    self.percentage = round(self.__completed_count / self.__text_count, 2)
        except httpcore.ReadTimeout as exc:
            self.exception = exc
            raise exc
        except httpcore.ConnectTimeout as exc:
            self.exception = exc
            raise exc

    # Translate SRT Files
    def __translate_srt(self):
        # Initialise
        index = 1
        timecode = False

        try:
            # If Using Model, Call Model.Translate(Text)
            if self.__model_translator:
                for i, caption in enumerate(self.__source_text):
                    # Stop if cancel
                    if self.cancel:
                        break

                    # Copy for Line Number (Don't translate)
                    if not caption:
                        self.__translated.append(caption)

                    elif caption == str(index):
                        self.__translated.append(caption)
                        index += 1
                        timecode = True

                    # Copy for Timecode (Don't translate)
                    elif timecode:
                        self.__translated.append(caption)
                        timecode = False

                    # Translate for Text
                    else:
                        text = self.__translator.translate(caption)
                        self.__translated.append(text)

                    # Update Progress
                    self.__completed_count += 1
                    self.percentage = round(self.__completed_count / self.__text_count, 2)
            else:
                # Translate by lines
                for i, caption in enumerate(self.__source_text):
                    # Stop if cancel
                    if self.cancel:
                        break

                    # Copy for Line Number (Don't translate)
                    if not caption:
                        self.__translated.append(caption)

                    elif caption == str(index):
                        self.__translated.append(caption)
                        index += 1
                        timecode = True

                    # Copy for Timecode (Don't translate)
                    elif timecode:
                        self.__translated.append(caption)
                        timecode = False

                    # Translate for Text
                    else:
                        text = self.__translator.translate(caption, src=self.__src_language,
                                                           dest=self.__des_language).text
                        self.__translated.append(text)

                    # Update Progress
                    self.__completed_count = i
                    self.percentage = round(self.__completed_count / self.__text_count, 2)
        except httpcore.ReadTimeout as exc:
            self.exception = exc
            raise exc
        except httpcore.ConnectTimeout as exc:
            self.exception = exc
            raise exc
    # endregion

    # region Translate
    # Call for Translations Depending on File Type
    def translate(self):
        # Initialise
        self.cancel = False

        # Read Text
        self.__read_text()

        # Translate Text
        if self.__filetype == 'txt':
            self.__translate_txt()
        elif self.__filetype == 'srt':
            self.__translate_srt()

        # Write Output
        if not self.cancel:
            self.__write_file()
            self.__output_log()

        self.completed = True
    # endregion

    # region Output
    # Write Output
    def __write_file(self):
        # Check for output directory
        FileOperations.check_directory(self.__des_path)

        # Write file
        if self.__translated:
            with open(self.output, 'w', encoding='utf-8') as file:
                file.write('\n'.join(self.__translated))

    # Write Log
    def __output_log(self):
        self.__log = []
        self.__log.append("Source: {}".format(self.__source))
        self.__log.append("Output: {}".format(self.output))
        self.__log.append("Source Language: {}".format(self.__src_language))
        self.__log.append("Language: {}".format(self.__des_language))

        FileOperations.output_log("Translation", self.__log, self.__log_path)
    # endregion
