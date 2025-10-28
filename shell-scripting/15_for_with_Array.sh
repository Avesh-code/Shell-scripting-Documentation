#!/bin/bash

myArray=( 1 2 3 Hello "My Name is Avesh")
length=${#myArray[*]}

for (( i=0;i<$length;i++ ))
do
	echo "Values of the $i index in Array is ${myArray[$i]}"
done

