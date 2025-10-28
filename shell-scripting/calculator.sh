#!/bin/bash

function multiply {

	let m=$1*$2
	echo "The Multiplication of $1 and $2 = $m "
}

function addition {

        let a=$1+$2
        echo "The Addition of $1 and $2 = $a "
}

function subtraction {

        let s=$1-$2
        echo "The Subtraction of $1 and $2 = $s "
}

function division {

        let d=$1/$2
        echo "The Divition of $1 and $2 = $d "
}

echo "select an Operation"
echo "a) Multiplication"
echo "b) Addition"
echo "c)Subtraction"
echo "d)Divition"

read choice
case $choice in 
	a) 
		read -p "Enter the number 1: " num1
		read -p "Enter the number 2: " num2
		multiply $num1 $num2
		;;
	b)
		read -p "Enter the number 1: " num1
                read -p "Enter the number 2: " num2
                addition  $num1 $num2
		;;
	c)
		read -p "Enter the number 1: " num1
                read -p "Enter the number 2: " num2
                subtraction $num1 $num2
		;;
	d)
		read -p "Enter the number 1: " num1
                read -p "Enter the number 2: " num2
                division $num1 $num2
		;;
	*)
		echo "Input is Invalid"
esac

