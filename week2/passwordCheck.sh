#!/bin/bash

# Version Date        Author   Description
# 1.0     21 Jul 2021 G Slater Initial version

# set the location of the secret hash file
secretHashFile="output/secret.txt"

# Ask the user to enter the secret password
read -s -p "Enter the secret password: " userPassword
echo

# Hash the entered password
userPasswordHash=$(echo $userPassword | sha256sum)

# Read the secret.txt password hash
storedPasswordHash=$(cat $secretHashFile)

# Validate the password
if [ "$userPasswordHash" == "$storedPasswordHash" ]; then
  echo "Access Granted"
  exit 0
else
  echo "Access Denied"
  exit 1
fi
