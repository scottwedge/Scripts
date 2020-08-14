#!/bin/bash

# Script to grab suspect misspelled words
# as last column in output of "spell -no"

rm t

spell -no * >> t
spell -no */* >> t



