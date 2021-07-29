#!/bin/bash

# Version Date        Author   Description
# 1.0     26/07/2021  G Slater Initial version

## declare an array variable
declare -a fruits=("Apple" "Mango" "Strawberry" "Orange" "Banana")

# get length of an array
arraylength=${#fruits[@]}

# use for loop to loop through array
for (( i=0; i<${arraylength}; i++ ));
do
  # display array for for i
  echo "FRUIT: ${fruits[$i]}"
done