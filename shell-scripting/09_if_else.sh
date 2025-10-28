#!/bin/bash

read -p "What is Your Marks? -" marks

<<ifelse
if [[ $marks -gt 40 ]]
then
	echo "You Are Pass!"
else
	echo "You Are Fail!"
fi
ifelse

if [[ $marks -ge 80 ]]
then
	echo "A Grade"
elif [[ $marks -ge 60 ]]
then
	echo "B Grade"
elif [[ $marks -ge 40 ]]
then 
	echo "P Grade"
else
	echo "Fail!!!"
fi

