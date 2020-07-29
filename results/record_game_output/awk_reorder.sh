#!/bin/bash

# Reorder line containing "COUNT"
# Normal output is: "
#random_even       GAME OVER        SHIP GROUPS= 2      COUNT= 95 of 100
#
# So change to 
#COUNT= 95 of 100  random_even       GAME OVER        SHIP GROUPS= 2 

FILE_1=/home/swedge/Documents/GIT/scripts/results/record_game_output/t1

cat $FILE_1 | grep COUNT | awk '{print $10 " " $9 " " $8 " " $7 " " $6 " " $5 " " $4 " " $3 " " $2 " " $1}'
