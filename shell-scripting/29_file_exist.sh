#!/bin/bash

FILEPATH="/home/aveshpadaya/shell-scripting/avesh.csv"

if [[ -f $FILEPATH ]]
then
	echo "File exist!"
else
	echo "creating File !"
	touch $FILEPATH
	exit 1
fi

