#!/bin/bash

figlet simpleCalc!

# Create a while loop to display calc options
while :
do
  # Display calc menu options
  echo -e "\e[00mChoose one of the following options: "
  echo -e "1. \e[34mAdd \e[00mtwo numbers"
  echo -e "2. \e[32mSubtract \e[00mtwo numbers"
  echo -e "3. \e[31mMultiply \e[00mtwo numbers"
  echo -e "4. \e[35mDivide \e[00mtwo numbers"
  echo -e "0. Exit"
  echo 

  # Take the users input from the above menu
  read -p "Enter menu option: " menuInput

  # Depending on user input run the calculations
  case $menuInput in
    1)  # Take user input for addition
        echo 
        read -p "Enter number 1: " num1
        read -p "Enter number 2: " num2 
        
        # Set the calc result for addition
        result=$(echo $num1 + $num2| bc -l)

        # Display the result in blue
        echo 
        echo -e "\e[00mThe answer is \e[34m$result \e[00m"
        echo 
        ;;
    2)  # Take user input for subtraction
        echo 
        read -p "Enter number 1: " num1
        read -p "Enter number 2: " num2 
        
        # Set the calc result for subtraction
        result=$(echo $num1 - $num2| bc -l)

        # Display the result in green
        echo 
        echo -e "\e[00mThe answer is \e[32m$result \e[00m"
        echo 
        ;;
    3)  # Take user input for multiply
        echo 
        read -p "Enter number 1: " num1
        read -p "Enter number 2: " num2 
        
        # Set the calc result for multiplication
        result=$(echo $num1 \* $num2| bc -l)

        # Display the result in Red
        echo 
        echo -e "\e[00mThe answer is \e[31m$result \e[00m"
        echo 
        ;;
    4)  # Take user input for division
        echo 
        read -p "Enter number 1: " num1
        read -p "Enter number 2: " num2 
        
        # Set the calc result for division
        result=$(echo $num1 / $num2| bc -l)

        # Display the result in purple
        echo 
        echo -e "\e[00mThe answer is \e[35m$result \e[00m"
        echo 
        ;;
    0)  # Exit the menu 
        break
        ;;
    *)  # If the user does not enter a correct menu option
        # then display an error message
        echo
        echo "Invalid menu option"
        echo
  esac
done
exit 0