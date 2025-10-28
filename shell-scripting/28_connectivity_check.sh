#!/bin/bash

read -p "Enter the Site for connection check? - " site

ping -c 1 $site
#sleep 3s

if [[ $? -eq 0 ]]
then
	echo "Successfully Connection to $site"
else 
	echo "Unable To connect to $site"
fi


