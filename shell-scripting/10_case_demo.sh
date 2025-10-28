#!/bin/bash

echo "Provide an Option."
echo "a for print date"
echo "b for list scripts "
echo "C for check the current location." 

read choice

case $choice in 
	a)
		echo "printing Date"
		date
		echo "ending.."
		;;
	b)ls;;
	c)pwd;;
	*)echo "please provide a valid input"
esac

