#!/bin/bash

# Try to place a single five grid ship in a 5x5 grid
# This had not worked previously due to a bug in
# the boundary checking of "does_ship_fit" function.

# This puts output in /tmp/t so watch output with "tail -f /tmp/t"


for j in {1..100} 
    do 
      ~swedge/Documents/GIT/battleship/battleship.py x=5 y=5 num=0 pattern=random_odd >> /tmp/t 
    done
