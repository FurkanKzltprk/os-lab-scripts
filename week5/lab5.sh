#!/bin/bash

if [ $# != 0 ]; then
    

    echo "The script sums the parameters entered"
    echo "Enterred parameters:"
    echo "-----------------------------"
    sum=0

    for i in $@
    do
        sum=$[ $sum+$i ]
        done
        echo "sum=$sum"
    else 
    echo "Call script as follows: $0 numbers separed with space"
    fi

    # Usage : ./lab5.sh 12 32 1 3 4 
    
    # Enterred parameters:
    # -----------------------------
    # sum=52