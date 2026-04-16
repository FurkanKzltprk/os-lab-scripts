#!/bin/bash

if [ $# != 0 ]; then
	echo "Parameters are: #@"
for i in $@
do

	test -f $i 
	if [ "$?" = 0 ]
	then
		echo "$i exist"
		echo "------------"
	else
            echo "$i does NOT exist"
	    echo "----------------"
	fi

done
echo "$1 is first parameter"
ls $1 2>>erro_file.txt #file with errors ??
else
	echo "Please put parameters after $0"
fi

