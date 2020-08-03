#!/bin/bash

# Enter numeric value between 0 and 255
# and check value is correct range
# If OK, then return it


function rval() {
    echo "Enter value between 0 and 255 inclusive:"
    read value

    if [[ $value -ge 0 ]] && [[ $value -le 255 ]]
    then
        echo "You entered value $value"
    else
        echo "You entered invalid value ... exiting"

    fi

    return $value
}

rval
