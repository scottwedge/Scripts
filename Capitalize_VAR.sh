#!/bin/bash

# This script uses all capitals for its variables

VAR1="car1"

VAR2="car2"

echo "Enter either 'car1' or 'car2':"
read VAR3

if [[ $VAR3 == $VAR1 ]]
then
	echo "you entered car1"

elif [[ $VAR3 == $VAR2 ]]
then
	echo "you entered car2"

else
	echo "you entered something else"
fi





