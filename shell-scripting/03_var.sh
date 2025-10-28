#!bin/bash

#script to show how to use variables

a=10
name="Avesh"
Age=23
echo "My name is  $name and my age is  $Age"
name="Prasant"
echo "my name is $name"

HOSTNAME=$(hostname)
echo "Name of this Machine is $HOSTNAME"
