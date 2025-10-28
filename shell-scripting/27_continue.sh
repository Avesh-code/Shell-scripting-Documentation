#!/bin/bash

# for Example continue to skip one iteration
# SO we are printing odd values
echo "Odd no. are: "
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13
do
	let r=$i%2
	if [[ $r -eq 0 ]]
	then
		continue
	fi
	echo "$i"
done

