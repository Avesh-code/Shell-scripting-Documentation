#!/bin/bash

#monitor File System Usage 

FU=$(df -H | egrep -v "Filesystem|tmpfs|efivarfs" | grep "nvme0n1p2" | awk '{print $5}' | tr -d % )
TO="avesh.padaya@nuvo.ai"

if [[ $FU -ge 80 ]]
then
       echo "Warning sending mail!!"	
	echo "Warning, Disk Space is Low!!!!---- $FU % " | mailx -s "Warning The DISK SPACE is LOW!!!!!" $TO
else
	echo "Good sending mail"
	echo "All Good Free Disk space is $FU %" |  mailx -s "All Good " $TO
fi
