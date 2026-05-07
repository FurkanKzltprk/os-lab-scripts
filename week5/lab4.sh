#!/bin/bash
echo "The script sums the numbers entered, until zero is entered"
echo "enter the numbers:"
echo "-----------------------------"


sum=0
val=1


while [ $val != 0 ];
do
    read val
    sum=$(( $sum + $val ))
echo "sum=$sum"


done
echo "sum=$sum"
 

