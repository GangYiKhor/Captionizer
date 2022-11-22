import collections
import pandas as pd

# region Input
path = "data\\downloaded\\"
filename1 = path + "malaydataset_en_full" + ".txt"
filename2 = path + "malaydataset_ms_full" + ".txt"
write_filename1 = path + "malaydataset_en" + ".txt"
write_filename2 = path + "malaydataset_ms" + ".txt"

sentences_1_name = "English"
sentences_2_name = "Malay"

prompt_finish = True
# endregion

# region Read File
with open(filename1, encoding='utf-8') as file:
    sentences_1 = pd.Series(file.read().splitlines())

with open(filename2, encoding='utf-8') as file:
    sentences_2 = pd.Series(file.read().splitlines())
# endregion

# region Separate Punctuation and Remove ♫ and ♬
replace_table = {ord('`'): ' ` ',
                 ord('~'): ' ~ ',
                 ord('!'): ' ! ',
                 ord('@'): ' @ ',
                 ord('#'): ' # ',
                 ord('$'): ' $ ',
                 ord('%'): ' % ',
                 ord('^'): ' ^ ',
                 ord('&'): ' & ',
                 ord('*'): ' * ',
                 ord('('): ' ( ',
                 ord(')'): ' ) ',
                 ord('_'): ' _ ',
                 ord('='): ' = ',
                 ord('+'): ' + ',
                 ord('['): ' [ ',
                 ord('{'): ' { ',
                 ord(']'): ' ] ',
                 ord('}'): ' } ',
                 ord('|'): ' | ',
                 ord(';'): ' ; ',
                 ord(':'): ' : ',
                 ord(','): ' , ',
                 ord('<'): ' < ',
                 ord('.'): ' . ',
                 ord('>'): ' > ',
                 ord('/'): ' / ',
                 ord('?'): ' ? ',
                 ord('"'): ' " ',
                 ord('♫'): '',
                 ord('♬'): '',
                 ord('\\'): ' \\ '}

sentences_1 = pd.Series([x.lower().translate(replace_table).
                        replace('    ', ' ').
                        replace('   ', ' ').
                        replace('  ', ' ')
                        for x in sentences_1])

sentences_2 = pd.Series([x.lower().translate(replace_table).
                        replace('    ', ' ').
                        replace('   ', ' ').
                        replace('  ', ' ')
                        for x in sentences_2])
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

# region Write File
with open(write_filename1, 'w', encoding='utf-8') as file:
    file.write('\n'.join(sentences_1))
with open(write_filename2, 'w', encoding='utf-8') as file:
    file.write('\n'.join(sentences_2))

print("Finished Output File:")
print(write_filename1)
print(write_filename2)
# endregion

# Prompt Finish with WinSound
if prompt_finish:
    import winsound
    winsound.MessageBeep()
