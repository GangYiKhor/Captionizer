from datetime import datetime
from pathlib import Path
import numpy as np
import pickle

from keras.preprocessing.text import Tokenizer, text_to_word_sequence
from keras_preprocessing.sequence import pad_sequences
from sklearn.model_selection import train_test_split

from keras.models import Model
from keras.layers import Input, Embedding, TimeDistributed, Dense, Dropout
from keras_nlp.layers import PositionEmbedding, TransformerEncoder, TransformerDecoder

from keras.initializers.initializers_v2 import GlorotUniform
from keras.losses import sparse_categorical_crossentropy
from keras.optimizers import Adam

from keras.callbacks import ModelCheckpoint, TensorBoard, EarlyStopping, ReduceLROnPlateau, LearningRateScheduler


class TrainModel:
    __feature_vocab: int
    __label_vocab: int
    __pad_len: int
    __model: Model
    __feature_tokenizer: Tokenizer
    __label_tokenizer: Tokenizer

    def __init__(self):
        import tensorflow as tf
        np.random.seed(16)
        tf.random.set_seed(16)

    @staticmethod
    def __lr_scheduler(epoch, lr):
        if epoch < 10:
            return lr
        else:
            return lr * (epoch ** (-0.5))

    @staticmethod
    def __load_file(file: Path):
        return np.array(file.read_text(encoding='utf-8').splitlines())

    @staticmethod
    def __generate_tokenizer(string):
        tokenizer = Tokenizer(oov_token='OOV')
        tokenizer.fit_on_texts(string)
        return tokenizer

    @staticmethod
    def __encode_text(string, tokenizer: Tokenizer, pad_len):
        seq = tokenizer.texts_to_sequences(string)
        padded_seq = pad_sequences(seq, maxlen=pad_len, padding='post')
        return padded_seq

    @staticmethod
    def __decode_text(tokens, tokenizer: Tokenizer, pad_value='<PAD>', from_logit=True):
        words = {index: word for word, index in tokenizer.word_index.items()}
        words[0] = pad_value

        if from_logit:
            return ' '.join([words[prediction] for prediction in np.argmax(tokens, 1)])
        else:
            return ' '.join([words[prediction] for prediction in tokens])

    def __save_files(self, folder_path: Path, ftr_tkz_file: str, lbl_tkz_file: str, parameter_file: str):
        # Create Folder if not exist
        if not folder_path.exists():
            folder_path.mkdir()

        # Save Tokenizer
        print("Saving Tokenizers...")
        with open(Path(str(folder_path) + "\\" + ftr_tkz_file), 'wb') as handle:
            pickle.dump(self.__feature_tokenizer, handle, protocol=pickle.HIGHEST_PROTOCOL)
        with open(Path(str(folder_path) + "\\" + lbl_tkz_file), 'wb') as handle:
            pickle.dump(self.__label_tokenizer, handle, protocol=pickle.HIGHEST_PROTOCOL)
        with open(Path(str(folder_path) + "\\" + parameter_file), 'wb') as handle:
            pickle.dump(self.__pad_len, handle, protocol=pickle.HIGHEST_PROTOCOL)

    def __preprocess_dataset(self, feature, label, test_size=0.2, test_random_state=42, preprocess=True):
        # Preprocess Text
        if preprocess:
            feature = [' '.join(text_to_word_sequence(text,
                                                      filters='\"#$%&()*+-/:;<=>@[\\]^_`{|}~\t\n')) for text in feature]
            label = [' '.join(text_to_word_sequence(text,
                                                    filters='\"#$%&()*+-/:;<=>@[\\]^_`{|}~\t\n')) for text in label]

        # Generate Tokenizers
        print("Building Tokenizer...")
        self.__feature_tokenizer = self.__generate_tokenizer(feature)
        self.__label_tokenizer = self.__generate_tokenizer(label)

        # Split Train and Test
        print("Splitting Train / Test Set...")
        train_ftr, test_ftr, train_lbl, test_lbl = train_test_split(feature, label,
                                                                    test_size=test_size,
                                                                    random_state=test_random_state)

        # Encode Texts
        print("Tokenizing Text...")
        train_ftr_enc = self.__encode_text(train_ftr, self.__feature_tokenizer, self.__pad_len)
        train_lbl_enc = self.__encode_text(train_lbl, self.__label_tokenizer, self.__pad_len)
        test_ftr_enc = self.__encode_text(test_ftr, self.__feature_tokenizer, self.__pad_len)
        test_lbl_enc = self.__encode_text(test_lbl, self.__label_tokenizer, self.__pad_len)

        # Get Vocabulary Size
        self.__feature_vocab = len(self.__feature_tokenizer.word_index) + 1  # Since 0 is not used
        self.__label_vocab = len(self.__label_tokenizer.word_index) + 1

        # Set to 3 Dimension (Requirement of Sparse Categorical Crossentropy)
        train_ftr_enc = train_ftr_enc.reshape(*train_ftr_enc.shape, 1)
        train_lbl_enc = train_lbl_enc.reshape(*train_lbl_enc.shape, 1)
        test_ftr_enc = test_ftr_enc.reshape(*test_ftr_enc.shape, 1)
        test_lbl_enc = test_lbl_enc.reshape(*test_lbl_enc.shape, 1)

        # Return
        return train_ftr_enc, train_lbl_enc, test_ftr_enc, test_lbl_enc

    def __build_model(self, learning_rate=0.001, embed_unit=256, dense_unit=1024, encoder_dropout=0.5,
                      decoder_dropout=0.2, linear_dropout=0.5, intermediate_dimension=2048, attention_heads=10):
        # Input
        encoder_input = Input(shape=(self.__pad_len,))

        # Embeddings
        encoder_embedding = Embedding(self.__feature_vocab, embed_unit, mask_zero=True)(encoder_input)
        encoder_position_embedding = PositionEmbedding(sequence_length=self.__pad_len)(encoder_embedding)
        encoder_embed = encoder_embedding + encoder_position_embedding

        # Encoder
        encoder = TransformerEncoder(
            intermediate_dim=intermediate_dimension,
            num_heads=attention_heads,
            kernel_initializer=GlorotUniform(seed=0),
            dropout=encoder_dropout
        )(encoder_embed)

        # Decoder
        decoder = TransformerDecoder(
            intermediate_dim=intermediate_dimension,
            num_heads=attention_heads,
            kernel_initializer=GlorotUniform(seed=0),
            dropout=decoder_dropout
        )(encoder, encoder_embed)

        # Output
        linear = TimeDistributed(Dense(dense_unit, activation='relu'))(decoder)
        dropout = Dropout(linear_dropout)(linear)
        output = TimeDistributed(Dense(self.__label_vocab, activation='softmax'))(dropout)

        # Optimizer
        optimizer = Adam(learning_rate)

        # Compile
        self.__model = Model(inputs=encoder_input, outputs=output)
        self.__model.compile(loss=sparse_categorical_crossentropy, optimizer=optimizer, metrics=['accuracy'])
        self.__model.summary()

    def train_model(self, feature: Path, label: Path, model_path: Path,
                    parameter_folder_path: Path, ftr_tkz_file: str, lbl_tkz_file: str, parameter_file: str,
                    log_path="logs\\", train_perc: int = 100, batch=128, epochs=25, pad_len=50, verbose=1):
        # Declarations
        self.__pad_len = pad_len

        # Get Feature and Labels in Percentage Stated
        interval = 100 // train_perc
        feature = self.__load_file(feature)[::interval]
        label = self.__load_file(label)[::interval]

        # Get Parameters
        print("Preprocessing Data...")
        train_ftr_enc, train_lbl_enc, test_ftr_enc, test_lbl_enc, = self.__preprocess_dataset(feature, label)

        if batch > len(train_ftr_enc):
            batch = len(train_ftr_enc)

        # Build Model
        print("Building Model...")
        self.__build_model()

        # Save Parameters
        self.__save_files(parameter_folder_path, ftr_tkz_file, lbl_tkz_file, parameter_file)

        # Model Callbacks
        checkpoint = ModelCheckpoint(model_path, monitor='val_loss', verbose=verbose, save_best_only=True)
        tensorboard = TensorBoard(log_dir=log_path + datetime.now().strftime("%Y%m%d_%H%M%S"))
        early_stop = EarlyStopping(monitor='val_loss', patience=7)
        reduce_lr = ReduceLROnPlateau(monitor='val_loss', factor=0.1, patience=3, verbose=verbose)
        lr_schedule = LearningRateScheduler(self.__lr_scheduler)

        # Train Model
        print("Training Model...")
        try:
            self.__model.fit(train_ftr_enc, train_lbl_enc, batch_size=batch, epochs=epochs,
                             verbose=verbose, callbacks=[checkpoint, tensorboard, early_stop, reduce_lr, lr_schedule],
                             validation_data=(test_ftr_enc, test_lbl_enc))
        except KeyboardInterrupt:
            print("\nModel Training Stopped!")

        # Print
        print("Model Trained Successfully!")


def main(dataset_name, model_name, feature_name, label_name, train_perc=100):
    feature = Path(f'data\\{dataset_name}\\{feature_name}.txt')
    label = Path(f'data\\{dataset_name}\\{label_name}.txt')

    model_path = Path(f'model\\{model_name}')
    parameter_path = Path(f'tokenizer\\{model_name}\\')
    feature_tkz = f'{feature_name}.tokenizer'
    label_tkz = f'{label_name}.tokenizer'
    parameter_name = 'parameter'

    model_trainer = TrainModel()
    model_trainer.train_model(feature, label, model_path, parameter_path, feature_tkz, label_tkz, parameter_name,
                              train_perc=train_perc)


if __name__ == "__main__":
    main("en_ms", "en_ms", "en", "ms")  # Train English-Malay Model
    main("en_ms", "ms_en", "ms", "en")  # Train Malay-English Model
