#!/bin/bash

#How to define array

myArray=( 1 2 3.5 Hello "I am avesh" ) 

#how to get values from an array

echo "This is my third index ${myArray[3]}"

# how to get all the values in arrays are 

echo "All the values in the Array are ${myArray[*]}"

# how to find number of values / length of Array

echo "The length of an Array is ${#myArray[*]}"

# hoe to get Specific Value in Array

echo "The values from 2 to 3 is ${myArray[*]:2:2}"

# how to update an Array

myArray+=(new 30 40)

echo "the values of new Array is ${myArray[*]}"

# key value pair 

declare -A Array
Array=( [name]=Avesh  [age]=23 [city]=Vapi )

echo "key name is ${Array[name]}"
echo "key Age is ${Array[age]}"
