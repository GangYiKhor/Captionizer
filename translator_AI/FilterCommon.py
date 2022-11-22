import math
import pandas as pd
from time import perf_counter
from threading import Thread

# region Input
filename1 = ["data\\en_ms_1\\en.txt"]
filename2 = ["data\\en_ms_1\\ms.txt"]

sentences_1_name = "English"
sentences_2_name = "Malay"

dict_path = "data\\dictionary\\"
dict_file1 = dict_path + "en_dictionary.txt"
dict_file2 = dict_path + "ms_dictionary.txt"

output_path = "data\\en_ms_4\\or\\"
output_file1 = output_path + "en.txt"
output_file2 = output_path + "ms.txt"

prompt_finish = True
# endregion

start_time = perf_counter()

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

# Read Dictionary
with open(dict_file1, encoding='utf-8') as file:
    dict_1 = file.read().splitlines()
with open(dict_file2, encoding='utf-8') as file:
    dict_2 = file.read().splitlines()

print("Length Sentences 1:", len(sentences_1))
print("Length Sentences 2:", len(sentences_2))
# endregion

# region Replace Punctuation (Not to be Filtered by Dictionary)
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
                 ord('-'): ' ',
                 ord('\\'): ' \\ '}

transformed_sentences_1 = []
transformed_sentences_2 = []

# Transform Sentence to Words, Lower
print(f"Transforming Sentences ({sentences_1_name})...")
for i, x in enumerate(sentences_1):
    transformed_sentences_1.append(x.lower().translate(replace_table).split())
    print('\r{}%'.format(math.floor(len(transformed_sentences_1) / len(sentences_1) * 100)), end='')
print()

print(f"Transforming Sentences ({sentences_2_name})...")
for i, x in enumerate(sentences_2):
    transformed_sentences_2.append(x.lower().translate(replace_table).split())
    print('\r{}%'.format(math.floor(len(transformed_sentences_2) / len(sentences_2) * 100)), end='')
print()
# endregion

# region Filter Sentence
print(f"Checking {sentences_1_name} & {sentences_2_name} Sentences...")


# Check and Filter Sentence, (Save valid sentence index into {valid_list} pass by reference in argument)
def check_sentence(name, valid_list, sentences, dictionary):
    for i in sentences:
        valid = True
        for j in i:
            if j not in dictionary and not j.isnumeric():  # Not filter numbers
                valid = False
                break
        valid_list.append(valid)
        print('\r{0}: {1}%'.format(name, math.floor(len(valid_list) / len(sentences) * 100)), end='')


# Create Threads to Filter Sentences At Same Time
valid_list1 = []
valid_list2 = []
check_sentences_1 = Thread(target=check_sentence, args=(sentences_1_name, valid_list1, transformed_sentences_1, dict_1))
check_sentences_2 = Thread(target=check_sentence, args=(sentences_2_name, valid_list2, transformed_sentences_2, dict_2))
check_sentences_1.start()
check_sentences_2.start()
check_sentences_1.join()
check_sentences_2.join()
print()

# Combine Filtering Result (Ensure Both Sentence Contained in Dictionary, and Preserve in Pair)
print("Combining Result...")
valid_list_full = []
for i in range(min(len(valid_list1), len(valid_list2))):
    valid_list_full.append(valid_list1[i] or valid_list2[i])

sentences_1 = pd.Series(sentences_1)
sentences_2 = pd.Series(sentences_2)
filtered_sentences_1 = sentences_1[valid_list_full]
filtered_sentences_2 = sentences_2[valid_list_full]

print(f"Original {sentences_1_name}:", len(sentences_1))
print(f"Original {sentences_1_name}:", len(sentences_2))
print(f"Filtered {sentences_2_name}:", len(filtered_sentences_1))
print(f"Filtered {sentences_2_name}:", len(filtered_sentences_2))
# endregion

# region Output File
with open(output_file1, 'w', encoding='utf-8') as file:
    file.write('\n'.join(filtered_sentences_1))

with open(output_file2, 'w', encoding='utf-8') as file:
    file.write('\n'.join(filtered_sentences_2))
# endregion

# Print Time Used
print("Time Used: {}s".format(round(perf_counter() - start_time, 2)))

# Prompt Finish with WinSound
if prompt_finish:
    import winsound
    winsound.MessageBeep()
