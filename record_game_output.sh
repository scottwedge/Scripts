#!/bin/bash

# Play game and record output to record number of guesses per game
# Put one ship group results into /tmp/t1, two groups into /tmp/t2 up to five groups into /tmp/t5

for j in {1..5}
do
   echo "" > /tmp/t$j  # delete file contents if file already exists
   for m in {1..100}
   do
     ~swedge/Documents/GIT/battleship/battleship.py num=2 pattern=random_even >> /tmp/t$j
   done
done
