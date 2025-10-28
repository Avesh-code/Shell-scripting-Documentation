#!/bin/bash

# Generating a random no. for Dice between 1 to 6

NO1=$(( $RANDOM % 6 + 1 ))
NO2=$(( $RANDOM % 6 + 1 ))

echo "Dice 1 is $NO1 "
echo "Dice 2 is $NO2 "

let s=$NO1+$NO2

echo "Total Score is $s "
