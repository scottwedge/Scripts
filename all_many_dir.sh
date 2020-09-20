#!/bin/bash
# Test all files not just .py files

echo "Starting first layer spell check"
spell -no * > /tmp/t

echo "Starting second layer spell check"
spell -no */* >> /tmp/t

echo "Starting third layer spell check"
spell -no */*/* >> /tmp/t

echo "Starting fourth layer spell check"
spell -no */*/*/* >> /tmp/t

echo "Starting fifth layer spell check"
spell -no */*/*/*/* >> /tmp/t

echo "Starting sixth layer spell check"
spell -no */*/*/*/*/* >> /tmp/t
