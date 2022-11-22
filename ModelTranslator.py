import pickle
from pathlib import Path
from ExperimentalTranslator import ExperimentalTranslator

MODEL_CHOICES = {
    "English-Malay": ("model\\en_ms\\", False),
    "Malay-English": ("model\\ms_en\\", False),
    "English-Malay (Experimental)": ("model\\en_ms_experimental\\", True),
    "Malay-English (Experimental)": ("model\\ms_en_experimental\\", True)
}


class ModelTranslator:
    def __init__(self, model_choice):
        model_path, self.__experimental = MODEL_CHOICES[model_choice]
        if not self.__experimental:
            self.__model = self.__load_file(Path(model_path + "\\model_output.model"))
            self.__tokenizer = self.__load_file(Path(model_path + "\\model_output.tokenizer"))
            self.__inter_model = self.__load_file(Path(model_path + "\\model_intermediate.model"))
            self.__inter_tokenizer = self.__load_file(Path(model_path + "\\model_intermediate.tokenizer"))
        else:
            self.__model = ExperimentalTranslator(Path(f"{model_path}\\model"),
                                                  Path(f"{model_path}\\src.tokenizer"),
                                                  Path(f"{model_path}\\tgt.tokenizer"),
                                                  Path(f"{model_path}\\parameter"))

    @staticmethod
    def __load_file(file_path: Path):
        with open(file_path, 'rb') as file:
            obj = pickle.load(file)
        return obj

    def translate(self, sentences):
        # Convert to List if is string
        is_str = type(sentences) is str

        # Translate
        if not self.__experimental:
            if is_str:
                sentences = [sentences]

            result = []
            for text in sentences:
                tokenized = self.__inter_tokenizer([text], return_tensors="pt")
                intermediate = self.__inter_model.generate(**tokenized)
                intermediate = [self.__inter_tokenizer.decode(x, skip_special_tokens=True) for x in intermediate][0]
                tokenized = self.__tokenizer([intermediate], return_tensors="pt")
                translated = self.__model.generate(**tokenized)
                result.append([self.__tokenizer.decode(x, skip_special_tokens=True) for x in translated][0])

            if is_str:
                result = result[0]
        else:
            result = self.__model.translate(sentences)

        return result
