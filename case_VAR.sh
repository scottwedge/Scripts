#!/bin/bash

# First attempt at using case statement


echo "Enter either 'car1' or 'car2':"
read VAR3

case ${VAR3} in

"car1") echo "you entered car1"
        ;;

"car2") echo "you entered car2"
	;;

*) echo "you entered something"
   ;;

esac

