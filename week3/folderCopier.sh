#!/bin/bash

# Version Date        Author   Description
# 1.0     26/07/2021  G Slater Initial version

read -p "Type the name of the folder you would like to copy: " folderName

#if the name is a valid directory
if [ -d "$folderName" ]; then
    #copy it to a new location
    read -p "Type the name of the destination folder: " newFolderName
    cp -r "$folderName" "$newFolderName"
else
    #otherwise, print an error
    echo "I couldn't find that folder"
    exit 1
fi
exit 0
