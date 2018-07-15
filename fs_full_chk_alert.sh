#!/bin/bash
#
# Author: Abhijit Shinde
# Purpose: To check FS Full & Send Mail
#

size=($( df -h | awk '{ print $5 }' |sed "s/%//" | tail -n +2 ))
fs_name=($( df -h | awk '{ print $6 }'| tail -n +2 ))

for (( i=0; i<${#size[@]}; i++ ));
do
	if [ ${size[$i]} -ge 90 ]
	then
		echo "ALERT!!!:FS ${fs_name[$i]} Reached to ${size[$i]}% on `hostname`" | mailx -s "FS Full Alert on `hostname`" <Enter Yout Mail id>
	fi
done
