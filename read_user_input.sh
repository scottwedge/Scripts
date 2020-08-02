#!/bin/bash

# Read user input after prompt

echo "Enter 1 or 2: "
read var
echo "${var}"

if [[ "${var}" == "1" ]]
then
   echo "You entered 1."

elif [[ "${var}" == "2" ]]
then
   echo "You entered 2"

else
   echo "You entered something other than 1 or 2"

fi
