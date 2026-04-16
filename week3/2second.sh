#!/bin/bash
echo -e "Put filename to read: " 
read file 
if [ ! -e $file ]; then
	echo " file not exist"
elif [ ! -r $file ];
then 
	echo "I can't read file $file"
	exit 1
else 
cat $file | while read line 
do 
	echo $line
done
fi
