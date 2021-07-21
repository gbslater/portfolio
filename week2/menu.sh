#!/bin/bash

# Validate the users password
./passwordCheck.sh

# Check the exit code
if [ $? = 0 ]; then
  # If the exit code was successful then run the menu
  echo "Select an option:"
  echo "1. Create a folder"
  echo "2. Copy a folder"
  echo "3. Set a password"

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
  esac
fi

exit 0
