import collections
import pandas as pd
import math

# region Input
filename1 = ["data\\en.txt"]
filename2 = ["data\\ms.txt"]

sentences_1_name = "English"
sentences_2_name = "Malay"

percentage = 100
skip_delimiter = False

output_dictionary = False
output_file1 = "data\\en_dictionary.txt"
output_file2 = "data\\ms_dictionary.txt"
output_size = 1000

prompt_finish = True
# endregion

# region Read File
print("Reading File...")
sentences_1 = []
sentences_2 = []

for filename in filename1:
    with open(filename, 'r', encoding='utf-8') as file:
        sentences_1 += file.read().splitlines()

for filename in filename2:
    with open(filename, 'r', encoding='utf-8') as file:
        sentences_2 += file.read().splitlines()

print("Length Sentences 1:", len(sentences_1))
print("Length Sentences 2:", len(sentences_2))
# endregion

# region Intervals
print("Splitting File...")
interval = 100 // percentage
sentences_1 = sentences_1[::interval]
sentences_2 = sentences_2[::interval]

print("Length Sentences 1:", len(sentences_1))
print("Length Sentences 2:", len(sentences_2))
# endregion

# region Skip Delimiter Contained Sentences
if skip_delimiter:
    # Set Delimiters
    print("Skipping Sentences...")
    delimiter = ['`',
                 '~',
                 '@',
                 '^',
                 '_',
                 '=',
                 '+',
                 '[',
                 '{',
                 ']',
                 '}',
                 '|',
                 ';',
                 '<',
                 '>',
                 '/',
                 '\\',
                 '--']

    # Skip Sentences 1
    skip_1 = []
    for i in sentences_1:
        valid = True
        for j in delimiter:
            if j in i:
                valid = False
                break
        skip_1.append(valid)
        print('\rSentences 1: {0}%'.format(math.floor(len(skip_1) / len(sentences_1) * 100)), end='')
    print()

    # Skip Sentences 2
    skip_2 = []
    for i in sentences_2:
        valid = True
        for j in delimiter:
            if j in i:
                valid = False
                break
        skip_2.append(valid)
        print('\rSentences 2: {}%'.format(math.floor(len(skip_2) / len(sentences_2) * 100)), end='')
    print()

    # Combine Skip Sentences 1 and 2
    skip_combine = []
    for i in range(len(skip_1)):
        skip_combine.append(skip_1[i] and skip_2[i])

    sentences_1 = pd.Series(sentences_1)[skip_combine]
    sentences_2 = pd.Series(sentences_2)[skip_combine]

    print("Length Sentences 1:", len(sentences_1))
    print("Length Sentences 2:", len(sentences_2))
# endregion

# region Replace Delimiters
print("Replacing Delimiters...")
replace_table = {ord('`'): ' ',
                 ord('~'): ' ',
                 ord('!'): ' ',
                 ord('@'): ' ',
                 ord('#'): ' ',
                 ord('$'): ' ',
                 ord('%'): ' ',
                 ord('^'): ' ',
                 ord('&'): ' ',
                 ord('*'): ' ',
                 ord('('): ' ',
                 ord(')'): ' ',
                 ord('_'): ' ',
                 ord('='): ' ',
                 ord('+'): ' ',
                 ord('['): ' ',
                 ord('{'): ' ',
                 ord(']'): ' ',
                 ord('}'): ' ',
                 ord('|'): ' ',
                 ord(';'): ' ',
                 ord(':'): ' ',
                 ord(','): ' ',
                 ord('<'): ' ',
                 ord('.'): ' ',
                 ord('>'): ' ',
                 ord('/'): ' ',
                 ord('?'): ' ',
                 ord('"'): ' ',
                 ord('\\'): ' '}

sentences_1 = [x.lower().translate(replace_table) for x in sentences_1]
sentences_2 = [x.lower().translate(replace_table) for x in sentences_2]
# endregion

# region Word Counter
print("Counting Words...")
sentences_1_words_counter = collections.Counter([word for sentence in sentences_1 for word in sentence.split()])
sentences_2_words_counter = collections.Counter([word for sentence in sentences_2 for word in sentence.split()])

sentences_1_word_count = len([word for sentence in sentences_1 for word in sentence.split()])
sentences_1_word_unique = len(sentences_1_words_counter)
sentences_2_word_count = len([word for sentence in sentences_2 for word in sentence.split()])
sentences_2_word_unique = len(sentences_2_words_counter)

print(f"{sentences_1_word_count} {sentences_1_name} words.")
print(f"{sentences_1_word_unique} unique {sentences_1_name} words.")
print("Words per Vocab = ", sentences_1_word_count // sentences_1_word_unique)
print()
print(f"{sentences_2_word_count} {sentences_2_name} words.")
print(f"{sentences_2_word_unique} unique {sentences_2_name} words.")
print("Words per Vocab = ", sentences_2_word_count // sentences_2_word_unique)
# endregion

# region Output Common Words into Dictionary
if output_dictionary:
    with open(output_file1, 'w', encoding='utf-8') as file:
        file.write('\n'.join(list(zip(*sentences_1_words_counter.most_common(output_size)))[0]))

    with open(output_file2, 'w', encoding='utf-8') as file:
        file.write('\n'.join(list(zip(*sentences_2_words_counter.most_common(output_size)))[0]))
# endregion

# Prompt Finish with WinSound
if prompt_finish:
    import winsound
    winsound.MessageBeep()
