#!/bin/bash
# GuessingGame.sh

# Version Date        Author   Description
# 1.0     02-AUG-2021 G Slater Initital version

#This function prints a given error

printError()

{

    echo -e "\033[31mERROR:\033[0m $1"

}

#This function will accept the following arguments
# $1 - The string passed as the read statement
# $2 - The lower bound for the input number
# $3 - The upper bound for the input number
# $4 - The magic number

getNumber()

{
    #Ask the user for a number between $2 and $3
    read -p "$1: " userinput
    
    # Check to see if the user entered a null string
    input=$userinput 
    if [ -z $input ]; then
      # The user entered a null string so we need to set it to an out of bounds number
      input=$(( $2 - 1))
    fi 

    # While the reply does not equal the magic number
    while (( $input != $4 )); do 

      # Check that the reply is within the range of $2 and $3
      if [[ $input -lt $2 || $input -gt $3 ]]; then
        printError "Input must be between $2 and $3"

      # Check that the reply is less than the magic number $4
      elif [ $input -lt $4 ]; then
        echo "Too Low!"

      # Check that the reply is greater than the magic number $4
      elif [ $input -gt $4 ]; then
        echo "Too High!"
      fi 

      read -p "$1: " userinput

      # Check to see if the user entered a null string 
      input=$userinput 
      if [ -z $input ]; then
        # The user entered a null string so we need to set it to an out of bounds number
        input=$(( $2 - 1))
      fi  

    done 

    # We know the reply will be the magic number
    echo Correct!
 
}

# Play the game!
getNumber "Guess a number between 1 and 100" 1 100 42
