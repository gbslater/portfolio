#!/bin/bash

# Version Date        Author   Description
# 1.0     26/07/2021  G Slater Initial version
# 1.1     29/07/2021  G Slater Added directory resolve

# Create a while loop to display menu options
while :
do
  # Take the users input for the URL location
  read -p "Please type the URL of a file to download or type 'Exit' to quit: " urlInput

  case $urlInput in
    "Exit")  # Exit the loop
             break
             ;;
    "exit")  # Exit the loop
             break
             ;;
         *)  # Get the download location
             read -p "Type the location of where you would like to download the file to: " downloadLocation

             # A couple of test URL's
             # https://www.jumpjet.info/Offbeat-Internet/More/PC/The_Text-Book_of_Ju-Jutsu_as_Practised_in_Japan.pdf
             # http://www.grapplearts.com/wp-content/uploads/2014/02/Roadmap-for-BJJ-1.4.11.pdf

             # Resolve directory location
             directory=$(eval echo $downloadLocation)

             # Download the file to the download location
             wget -P $directory $urlInput
   esac
done
exit 0