#!/bin/bash
#easy menu

ans=0

while [ $ans != 4 ]; do
echo "    MENU"
echo " -------------------"
echo "1.Listing directory"
echo "2.looking for file" 
echo "3.About user"
echo "4.Exit"

read ans
    case $ans in
        1) echo -n "What directory would you list? "
            read dir 
            ls -l $dir;;
        2) echo -n "What file are you looking for?"
            read fil
            cat $fil;;
        
        3) echo "Information about user: "
            echo "name user is : $USER"
            echo "working directory is : $USER"
            echo -n "today is : "
            date;;
            4)echo "close the script";;
            *)echo "choose right option";;
            esac
        done
        