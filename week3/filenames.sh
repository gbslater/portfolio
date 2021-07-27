#!/bin/bash

fileName=$1

# Check to see if the file exists
if [ ! -f "$fileName" ]; then
  # The file does not exist, so error
  echo "$fileName does not exist."
  exit 1
fi

# Read the file line by line
while read line; do
  # Check to see if the line is not null
  if [ ! -z "$line" ]; then
    # Check to see if the input is a file
    if [ -f "$line" ]; then 
      echo "$line - That file exists"
    # Check to see if the input is a directory
    elif [ -d "$line" ]; then
      echo "$line - That's a directory"
    # Else let the user know we dont know what the input is
    else
      echo "$line - I don't know what that is"    
    fi 
  fi
done < $fileName
exit 0