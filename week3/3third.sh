#!/bin/bash

if [ $# != 0 ]; then

	for i in $@
	do
		echo $i
	done

else 
	echo "Call the scropt as followsasd:  $0 par1 par2 par3 as you wish"
fi

