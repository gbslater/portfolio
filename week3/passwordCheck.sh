#!/bin/bash

# Version Date        Author   Description
# 1.0     21 Jul 2021 G Slater Initial version

# set the location of the secret hash file
secretHashFile="output/secret.txt"

# Set the colour to red
echo -en "\e[31m"

# Ask the user to enter the secret password
read -sp "Enter the secret password: " userPassword
echo

# Hash the entered password
userPasswordHash=$(echo $userPassword | sha256sum)

# Read the secret.txt password hash
storedPasswordHash=$(cat $secretHashFile)

# Set the colour to green
echo -en "\e[32m"

# Validate the password
if [ "$userPasswordHash" == "$storedPasswordHash" ]; then
  echo "Access Granted"
  # Set the colour back to white
  echo -en "\e[00m"
  exit 0
else
  echo "Access Denied"
  # Set the colour back to white
  echo -en "\e[00m"
  exit 1
fi
