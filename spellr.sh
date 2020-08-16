#!/bin/bash

# First part of script grabs suspect misspelled words
# with "spell -no" that lists file, then line number, then suspect word

TEMP_FILE="/tmp/temp.txt"
OUTPUT_FILE="/tmp/temp_input.txt"

rm -f ${TEMP_FILE}
rm -f ${OUTPUT_FILE}

spell -no *.sh >> $TEMP_FILE
#spell -no */* >> $TEMP_FILE


# Reorder the data in the TEMP_FILE so that the last field
# which is the suspect word is now the first value in the line
# Output data is currently in the following format:
# awk1.sh:3: awk

# This will be reordered to
# awk awk1.sh 3

cat ${TEMP_FILE} | awk -F: '{ print $3, $1 ":" $2 }' > ${OUTPUT_FILE}

# Then invoke the python script 
./spellr.py
