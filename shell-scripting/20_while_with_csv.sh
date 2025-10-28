#!/bin/bash
cat test.csv | awk 'NR!=1 {print}' | while IFS="," read -r id name age
#awk 'NR > 1' test.csv | while IFS="," read -r id name age
do
	echo "ID is $id"
	echo "name is $name"
	echo "age is $age"
done
<<wrong
awk 'NR > 1' test.csv | while IFS=',' read -r id name age
do
    echo "ID is $id"
    echo "name is $name"
    echo "age is $age"
done
wrong

