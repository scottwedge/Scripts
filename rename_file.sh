#!/bin/bash

# If file exists, rename it by appending current date and time to filename

FILE1=/tmp/t1

if test -e $FILE1; then    			# if file exists
	echo "$FILE1 exists"			# print current file name
	FILE2=${FILE1}_`date +%F`_`date +%T`	# create new file name
        echo "Renamed to $FILE2"		# display new file name
	mv $FILE1 $FILE2			# rename file
fi

