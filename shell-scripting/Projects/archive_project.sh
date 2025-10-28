#!/bin/bash
#$Revision:001$
#$Fri Oct 17 03:14:52 PM IST 2025$

#variables
BASE=/home/aveshpadaya/shell-scripting/Projects/files
DAYS=10
DEPTH=1
RUN=0

#check if the directory is present or not  

if [ ! -d $BASE ]
then
	echo "Directory does not exist : $BASE"
	exit 1
fi

#create 'archive' folder if not present

if [ ! -d $BASE/archive ] 
then
	mkdir $BASE/archive
fi

# finding list of files larger than 20 mb
for i in `find $BASE -maxdepth $DEPTH -type f -size +20M`
do
	if [ $RUN -eq 0  ]
	then
		echo "[$(date "+%y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
		gzip $i || exit 1
		mv $i.gz $BASE/archive || exit 1
	fi
done
