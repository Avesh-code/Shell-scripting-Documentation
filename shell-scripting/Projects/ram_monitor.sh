#!/bin/bash

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=1000

if [[ $FREE_SPACE -lt $TH ]]
then
	echo "Warning , RAM is Running Low"
else
	echo "RAM Space is Sufficient - $FREE_SPACE M "
fi

