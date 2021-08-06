#!/bin/bash 

# Version Date        Author   Description
# 1.0     01-AUG-2021 G Slater Initial version
     
#get info about networking from the ifconfig command 
      
net_info="$(ifconfig)" 
      
#parse out the ip address lines using sed 
      
addresses=$(echo "$net_info" | sed -n '/inet / { 
      
s/inet/IP Address:/ 
      
s/netmask/\n\t\tSubnet Mask:/ 
      
s/broadcast/\n\t\tBroadcast Address:/ 
      
p 
      
}') 
      
#format output 
      
echo -e "IP addresses on this computer are:\n$addresses" 
     