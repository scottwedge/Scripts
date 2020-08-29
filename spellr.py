#!/usr/bin/env python3

""" Script assumes that shell script has generated file where each line
    begins with suspect word, followed by file and line number
    
    This script evaluates each suspect word.
    If word seems valid, then write to write_file

    Word is not valid if it contains "_" (ie 'first_field').
    Word is not valid if it has a mix of upper case in middle of word (ie- madeUpWorddd)

    Assumes list of words to be checked is in file '/tmp/temp_in.txt'.
    Assumes output of valid words in in file '/tmp/temp_out.txt'.
"""
# declare variables and constants
FILE_IN = "/tmp/temp_input.txt"
FILE_OUT = "/tmp/temp_output.txt"
FILE_OUT_INVALID = "/tmp/temp_fail.txt"

# Open files to read from and to write to
read_file = open(FILE_IN, "r")
write_file = open(FILE_OUT, "a")
fail_file = open(FILE_OUT_INVALID, "a")

# Initialize variables as dictionary
suspect_word_list = {}
invalid_word_list = {}

try:
    for k in read_file:
   
        j = k.split()[0]
        j1 = k.split()[1]
        valid = True
   
        if j.lower() == j:
            valid = True  # all lower case
        elif j.upper() == j:
            valid = True  # all upper case
        elif "_" in j:
            valid = False  # contains "_" so is made up word
        elif j.lower().capitalize() == j: 
            valid = True  # word is capitalized
        elif j.lower().capitalize() != j:
            valid = False    # there are capitals in the middle of the word so probably made-up

        if valid:
            write_file.write(j)
            write_file.write("\n")
            print("VALID:", j)
            if j in suspect_word_list.keys():
                suspect_word_list[j] = suspect_word_list[j] + 1   # increment count
            else:
                suspect_word_list[j] = 1   #First time with this word so count = 1
        else:
            fail_file.write(j)
            fail_file.write("\n")
            print("INVALID__________________:", j)
            if j in invalid_word_list:
                invalid_word_list[j] = invalid_word_list[j] + 1
            else:
                invalid_word_list[j] = 1
except:
    print("Exception")
    pass

# sort from least to most common
suspect_word_list = list(suspect_word_list.items())
invalid_word_list = list(invalid_word_list.items())


suspect_word_list.sort(key = lambda x: x[1])
invalid_word_list.sort(key = lambda x: x[1])

print("Suspect word list:", suspect_word_list)
print("INVALID word list:", invalid_word_list)

print("Suspect word list word by word ____________________DEBUG______")
for j in suspect_word_list:
    print(j)

