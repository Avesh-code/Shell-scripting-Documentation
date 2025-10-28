#!/bin/bash

myVar="Nuvo AI"

#length of the String
myVarLength=${#myVar}
echo "My var length is $myVarLength"

# for Upper case 
# myVarUpper=${myVar^^}

echo "Upper case is ${myVar^^}"

#for Lower Case 
#myVarLower=${myVar,,}

echo "Lower case is ${myVar,,}"

# for Replacing a word in a string.
# here myvar is variable name , AI is the word to replace, And Avesh is a new word to put in place of AI
newVar=${myVar/AI/Avesh}
echo "The new Var is $newVar"

# to slice a String from new variable 

sliceVar=${newVar:5:5}
echo "I have sliced the string from 5 index and for total no of character 5 is --- $sliceVar"
