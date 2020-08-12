#!/bin/bash

# Two ways of doing command substitution
# Put inside $(   )
# Or use `   `

date -Iminutes

date -Iminutes | awk -F: '{ print $1,"____", $2, "__" $3 }'
m=$(date -Iminutes | awk -F: '{ print $1,"____" }')
echo ${m}

n=`date -Iminutes | awk -F: '{ print $2,"_" }' `
echo ${n}
