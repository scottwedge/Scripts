#!/bin/bash

# Grab first optional argument and analyze it
# If it is --h or --help or -h or -help then display help
# else it will be the list of words caught by 'spell -no'

if [ $# -gt 0 ]; then
    TEMP_FILE=$1
else
    TEMP_FILE="/tmp/temp.txt"
    rm -f ${TEMP_FILE}
fi


# First part of script grabs suspect misspelled words
# with "spell -no" that lists file, then line number, then suspect word

OUTPUT_FILE="/tmp/temp_input.txt"

rm -f ${OUTPUT_FILE}

#spell -no *.sh >> $TEMP_FILE
#spell -no */* >> $TEMP_FILE


# Reorder the data in the TEMP_FILE so that the last field
# which is the suspect word is now the first value in the line
# Output data is currently in the following format:
# awk1.sh:3: awk

# This will be reordered to
# awk awk1.sh 3

cat ${TEMP_FILE} | awk -F: '{ print $3, $1 ":" $2 }' > ${OUTPUT_FILE}

# Then invoke the python script (using absolute path)
/home/swedge/Documents/GIT/scripts/spellr.py
