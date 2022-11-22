from pathlib import Path
from keras.models import load_model
from keras_preprocessing.sequence import pad_sequences
import numpy as np
import pickle


class ExperimentalTranslator:
    def __init__(self, model_path: Path, src_tkz_path: Path, des_tkz_path: Path, parameter_path: Path):
        self.model = load_model(model_path)
        with open(src_tkz_path, 'rb') as handle:
            self.src_tokenizer = pickle.load(handle)
        with open(des_tkz_path, 'rb') as handle:
            self.des_tokenizer = pickle.load(handle)
        with open(parameter_path, 'r') as file:
            self.pad_len = int(file.read())

    def encode_text(self, string):
        return pad_sequences(self.src_tokenizer.texts_to_sequences(string), maxlen=self.pad_len, padding='post')

    def decode_text(self, logit, pad_value='<PAD>'):
        words = {index: word for word, index in self.des_tokenizer.word_index.items()}
        words[0] = pad_value

        sentence = ' '.join([words[prediction] for prediction in np.argmax(logit, 1)])
        if len(sentence) > 1:
            sentence = sentence[0].upper() + sentence[1:]
        else:
            sentence = sentence[0].upper()
        strip_sentence = ' '.join(sentence.split()) + '.'  # Strip extra spaces in between

        return strip_sentence

    def translate(self, sentences):
        is_str = type(sentences) is str

        if is_str:
            sentences = [sentences]

        input_enc = self.encode_text(sentences)
        predictions = self.model.predict(input_enc)

        if is_str:
            return self.decode_text(predictions[0], '')
        else:
            return [self.decode_text(prediction, '') for prediction in predictions]
