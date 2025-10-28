#!/bin/bash

# Arithmatic operation
<<example 
x=10
y=2

mul=$x*$y
echo "$mul"
It is a wrong we can not do it like this
example

x=10
y=2

let a=$x*$y

echo "multiply = $a"

let b=$x+$y

echo "add = $b"

echo "The subtraction is = $(($x-$y))"
