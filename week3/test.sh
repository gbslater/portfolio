#!/bin/bash

num1=55.4
num2=3

echo test 1 
echo $num2 - $num1 | bc -l
echo -e "\e[32mtest in colour \e[00m"
result=$(echo $num2 - $num1 | bc -l)
echo -e "\e[32m$result \e[00m"


echo test 2
echo $num1 / $num2 | bc -l

echo test 3
echo "scale=2; $num1 / $num2" | bc -l

echo test 4
echo $num1 \* $num2 | bc -l

exit 0
