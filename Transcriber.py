import pickle
import numpy as np
from typing import Union


class Transcriber:
    model_choice = {
        "English": "model\\speech_recognition\\sr_en{}.model"
    }
    device_choice = {
        "gpu": "_gpu",
        "cpu": "_cpu"
    }

    def __init__(self, model_choice="English", device_choice="gpu"):
        with open(self.model_choice[model_choice].format(self.device_choice[device_choice.lower()]), 'rb') as file:
            self.__model = pickle.load(file)
            self.result = ""
            self.completed = False

    def transcribe(self, audio: Union[str, np.ndarray], show_all=False):
        self.completed = False
        self.result = self.__model.transcribe(audio)
        self.completed = True
        if show_all:
            return self.result
        else:
            return self.result["text"].strip()
