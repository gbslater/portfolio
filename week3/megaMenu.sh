#!/bin/bash

# Version Date        Author   Description
# 1.0     21 Jul 2021 G Slater Initial version
# 1.1     26 Jul 2021 G Slater Added extra menu options 4-8
# 1.2     29 Jul 2021 G Slater Fixed colour issue


# Validate the users password
./passwordCheck.sh

# Check the exit code
if [ $? -eq 0 ]; then

  while :
  do

    # If the exit code was successful then run the menu
    # Set the colour to green
    echo -en "\033[34m"
    echo "Select an option:"
    # Set the colour to cyan
    echo -en "\033[36m"
    echo "1. Create a folder"
    echo "2. Copy a folder"
    echo "3. Set a password"
    echo "4. Calculator"
    echo "5. Create Week Folders"
    echo "6. Check Filenames"
    echo "7. Download a File"
    # Set the colour to white    
    echo -en "\033[00m"
    echo "8. Exit"

    # Read the user input
    read menuOption

    case $menuOption in
       1) # Create a folder
          ./foldermaker.sh
          ;;
       2) # Copy a copy
          ./folderCopier.sh
          ;;
       3) # Set the password
          ./setPassword.sh
          ;;
       4) # Run the simpleCalc
          ./simpleCalc.sh
          ;;
       5) # Create the week folders
          read -p "Enter 1st number: " firstNum
          read -p "Enter 2nd number: " secondNum
          ./megafoldermaker.sh $firstNum $secondNum
          ;;
       6) # Check the filenames
           read -p "Enter filename: " fileName
          ./filenames.sh $fileName 
          ;;
       7) # Download a file
          ./internetDownloader.sh
          ;;
       8) # Exit the menu
          break
          ;;
       *)  # If the user does not enter a correct menu option
        # then display an error message
        echo
        echo "Invalid menu option"
        echo
    esac
  done 
fi

exit 0
