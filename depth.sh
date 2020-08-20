#!/bin/bash

# Determine how many directories are below the current directory and return that value

echo "Currently at directory $PWD"

`ls -l $PWD/* ` > /tmp/s

if [ cat /tmp/s | grep "drw" ]; then
	echo "directory"
fi
