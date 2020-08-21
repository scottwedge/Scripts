#!/bin/bash

# Determine how many directories are below the current directory and return that value

echo "Currently at directory $PWD"

ls -l ${PWD} | grep drw

