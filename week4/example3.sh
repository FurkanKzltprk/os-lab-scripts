#!/bin/bash
#Different methods of performing calculations
#Operations executed on script parameters

let RESULT1=$1+$2
echo $1+$2=$RESULT1 ' -> # let RESULT1=$1+$2'
declare -i RESULT2
RESULT2=$1+$2
echo $1+$2=$RESULT2 ' -> # declare -i RESULT2; RESULT2=$1+$2'
echo $1+$2=$(($1 + $2)) ' -> # $(($1 + $2))'

#When more parameters are given
RESULT3=0
for i in $@
do
    echo -n "$i+"
    RESULT3=$(($RESULT3 + $i))
done
echo "=$RESULT3"
