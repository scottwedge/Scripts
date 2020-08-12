#!/bin/bash

# Get hour of day

date -Iminutes | awk -FT '{ print  }' | awk -F: '{ print  }' 
echo $j
