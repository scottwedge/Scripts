#!/bin/bash

# Determine if the user is root or not
# by testing the value of UID
# which is 0 (zero) for root

if [[ "${UID}" -eq 0 ]]
then
  echo "You are root. Your UID is ${UID}."
else
  echo "You are not root. Your UID is ${UID}."
fi
