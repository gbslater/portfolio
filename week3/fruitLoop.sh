#!/bin/bash

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