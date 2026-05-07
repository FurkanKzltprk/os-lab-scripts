#!/bin/bash
echo "Enter the number of rows in pascals triangle:"
read rows

for ((i=0; i<rows; i++ )) do

for ((space=1 ; space <=rows-i ; space++))
do
  echo -n " "
done
coef=1
for((j=0 ; j<=i; j++))
do

    if [ $j -eq 0 ] || [ $i -eq 0 ]; then 
        coef=1
    else
        coef=$((coef * (i - j + 1) / j))
    fi
    echo -n "$coef "
done
echo
done