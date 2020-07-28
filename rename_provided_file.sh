#!/bin/bash

# Prompt for file to rename
# Verify that file does exist, else give warning and prompt again for file to change
# If file exists, rename it by appending current date and time to filename

valid_file=False
not_Q=True

while [ $valid_file = False ]  && [ $not_Q = True ]
do
    echo "Enter file name to rename or Q to quit"
    read FILE_1

    if [ $FILE_1 = "Q" ]; then
	not_Q=False

    else
        if test -e $FILE_1; then    			# if file exists
            valid_file=True
            echo "$FILE_1 exists"			# print current file name
            FILE_2=${FILE_1}_`date +%F`_`date +%T`	# create new file name
            echo "Renamed to $FILE_2"		# display new file name
            mv $FILE_1 $FILE_2			# rename file
	else
	    echo "$FILE_1 does not exist"
	fi

    fi
done

