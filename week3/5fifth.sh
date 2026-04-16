#!/bin/bash
#table of multiplications. S " 
echo -n " Please put a size of table: "
read size
	for ((i = 1; i <= $size; i++))
	do
		for(( j = 1; j <= $size; j++))
 	   do

		echo -n -e "$[ $i * $j ] \t"
	done
	echo
done


