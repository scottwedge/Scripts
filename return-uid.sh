#!/bin/bash

# To help calling routine determine if the user is root or not
# display the UID and then
# return the value of UID

function r()
{
    echo "UID is ${UID}"
    j=${UID}
    return 251
}


r
