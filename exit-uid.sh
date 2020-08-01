#!/bin/bash

# To help calling routine determine if the user is root or not
# display the UID and then
# use 'exit' to return a value based on UID

function r()
{
    echo "UID is ${UID}"
    j=${UID}
    if [[ $j -eq 0 ]]
    then
        exit 0
    else
	exit 252
    fi
}


r
