#!/bin/bash

while read myVar
do
	echo "Value from File is $myVar"
done < names.txt

