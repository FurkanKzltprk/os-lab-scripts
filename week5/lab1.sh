#!/bin/bash

fun1(){
echo "Option 1"
read
}

fun2(){
    echo "Option 2"
    read
}

fun3(){
    echo "Option 3"
    read
}
fun4(){
    echo "Option 4"
    read
}

ans=1

until [ $ans = 5 ]; do 
    clear
    echo "===========MENU==========="
    echo "1.First option"
    echo "2.Second option"
    echo "3.Third option"
    echo "4.Fourth option"
    echo "5.Exit"
    read ans
    case $ans in
        1) fun1;;
        2) fun2;;
        3) fun3;;
        4) fun4;;
        5) echo "Ending script ..."
            exit;;
        *) echo "Wrong answer";;

    esac
done