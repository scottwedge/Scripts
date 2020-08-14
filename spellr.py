#!/usr/bin/env python3

""" Script that will evaluate each word.
    If word seems valid, then write to write_file

    Word is not valid if it contains "_" (ie 'first_field').
    Word is not valid if it has a mix of upper case in middle of word (ie- madeUpWorddd)

    Assumes list of words to be checked is in local file 'temp_in'.
    Assumes output of valid words in in local file 'temp_out'.
"""
# declare variables and constants
FILE_IN = "temp_in"
FILE_OUT = "temp_out"
FILE_OUT_INVALID = "temp_fail"

# Open files to read from and to write to
read_file = open(FILE_IN, "r")
write_file = open(FILE_OUT, "a")
fail_file = open(FILE_OUT_INVALID, "a")

for j in read_file:
    valid = True
    
    if j.lower() == j:
        valid = True  # all lower case
    elif "_" in j:
        valid = False  # contains "_" so is made up word
    elif j.lower().capitalize() == j: 
        valid = True  # word is capitalized
    elif j.lower().capitalize() != j:
        valid = False    # there are capitals in the middle of the word so probably made-up

    if valid:
        write_file.write(j)
        print("VALID:", j)
    else:
        fail_file.write(j)
        print("INVALID:", j)


