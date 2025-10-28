#!/bin/bash


set -x
# to access the Arguments 

echo "First Argument is $1"
echo "second Argument is $2"

echo "All the arguments are - $@"
echo "Number of Arguments are - $#"

# for loop to access the values from arguments
for filename in $@
do 
	echo "Copying file - $filename"
done

