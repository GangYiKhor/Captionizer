# Captionizer
Captionizer is a caption generator program provide offline transcription and translation capability.

This project is my Final Year Project for Diploma.

## Background of Project:
Captions are getting more attention nowadays as numerous of videos are posted everyday. 
Accessibility is the most important concern for creators and developers so that every viewer gets the opportunity to enjoy the media shared.

## Objectives of this Project:
- To automate speech to text transcription process
- To automate pairing text with speech into caption
- To enable easy bulk translation of text and caption files

## Project Modules:
- Transcription Module
- Translation Module
- Caption Pairing Module
- File Import Module
- Recording Module
- Audio Player Module
- History Module
- Storage Optimizing Module
- User Interface Module
- Neural Machine Translation Model Training Module

## Requirements:
- `Python 3.7+`
- `PyAudio`
- `PyDub`
- `MoviePy`
- `Librosa`
- `SoundFile`
- `PyQt5`
- `SoundDevice`
- `Proglog`
- `PyTorch`
- `Sacremoses`
- `Transformers`
- `SentencePiece`
- `TensorFlow`
- `PyWhisper`
- `GoogleTrans 3.1.0a0`

## NMT Model
Two of the translation model is built and trained with the model training module of this project by using TensorFlow and Keras.
However, the translation model is roughly built due to short timeframe, therefore it produces relatively low accuracy with little vocabulary of 5000 words.
Hence, external model from MarianMT has been downloaded through HuggingFace for better translation result.
The trained model is also included in the project marked as Experimental.

## Limitations:
Relatively slow start up

## Further Enhancement:
Further polish NMT model architecture and train with better dataset for accurate result
