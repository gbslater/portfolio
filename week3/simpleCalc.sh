#!/bin/bash

figlet simpleCalc!

# Create a while loop to display calc options
while :
do
  # Display calc menu options
  echo -e "\e[00mChoose one of the following options: "
  echo -e "1. \033[34mAdd \033[00mtwo numbers"
  echo -e "2. \033[32mSubtract \033[00mtwo numbers"
  echo -e "3. \033[31mMultiply \033[00mtwo numbers"
  echo -e "4. \033[35mDivide \033[00mtwo numbers"
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
        echo -e "\033[00mThe answer is \033[34m$result \033[00m"
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
        echo -e "\033[00mThe answer is \033[32m$result \033[00m"
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
        echo -e "\033[00mThe answer is \033[31m$result \033[00m"
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
        echo -e "\033[00mThe answer is \033[35m$result \033[00m"
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