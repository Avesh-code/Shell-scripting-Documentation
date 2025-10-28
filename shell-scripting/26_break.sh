#!/bin/bash

#example for break
#searching for number if it found then present 

read -p "Enter The number for Find - " no
count=0

for i in 1 2 3 4 5 6 7 8 9 
do
	if [[ $no -eq $i ]]
	then 
		echo "$no is Found!"
		let count++
		break
	fi
done

if [[ $count -gt 0 ]]
then
	echo "The Number is Successfully Found"
else
	echo "The Number is Not Present!!"
fi

