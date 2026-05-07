#!/bin/bash

odp=y

while [ $odp == "y" ] || [ $odp == "Y" ]; 
do
    clear
    echo " The programme performs mathematical operations in the form of 'a op b'"
    echo " ------------------------------"

    read a op b
    w=$(($a $op $b))
    echo "Result $w"

    read -p "Are you still counting? [y/n]: " odp
done

