from ExperimentalTranslator import ExperimentalTranslator
from pathlib import Path
import pickle

en_ms_translator = ExperimentalTranslator(Path("experimental_model\\en_ms\\model"),
                                          Path("experimental_model\\en_ms\\en.tokenizer"),
                                          Path("experimental_model\\en_ms\\ms.tokenizer"),
                                          Path("experimental_model\\en_ms\\parameter"))

ms_en_translator = ExperimentalTranslator(Path("experimental_model\\ms_en\\model"),
                                          Path("experimental_model\\ms_en\\ms.tokenizer"),
                                          Path("experimental_model\\ms_en\\en.tokenizer"),
                                          Path("experimental_model\\ms_en\\parameter"))

with open("model\\en_ms_experimental\\model.model", 'wb') as file:
    pickle.dump(en_ms_translator, file, protocol=pickle.HIGHEST_PROTOCOL)
with open("model\\ms_en_experimental\\model.model", 'wb') as file:
    pickle.dump(ms_en_translator, file, protocol=pickle.HIGHEST_PROTOCOL)
