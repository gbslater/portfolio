#!/bin/bash

# Version Date        Author   Description
# 1.0     26/07/2021  G Slater Initial version

# Ask for directory and password
read -p "Enter folder name : " folderName
read -s -p "Enter password : " secretPassword

echo 

# Check to see if the folder does not exist 
if [ ! -d "$folderName" ]; then
  # The folder does not exist so create it
  mkdir "$folderName"
fi

# Save the users password in the secret.txt file
echo "$secretPassword" | sha256sum > "$folderName"/secret.txt

exit 0
