#!/bin/sh
<<AND
read -p "What is your Age? " age
read -p "What is your Country? " country
if [ "$age" -ge 18 ] && [ "$country" = "India" ]
then
    echo "You can Vote!!"
else
    echo "You cannot Vote!!!"
fi
AND

read -p "What is your Age? " age
read -p "What is your Country? " country
if [ "$age" -ge 18 ] || [ "$country" = "India" ]
then
    echo "You can Vote!!"
else
    echo "You cannot Vote!!!"
fi

