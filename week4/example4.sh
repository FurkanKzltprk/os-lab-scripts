#!/bin/bash
#The script reads in the name of a directory and displays its contents or creates a directory
#with the specified name. The script runs until you quit entering data.
ans="n"
while [ $ans = "n" ] || [ $ans = "N" ]
do
    echo -n "Enter directory name: "
    read KAT
    if [ -d $KAT ]; then
        w=`ls -l $KAT| grep ^-| wc -l`
        echo " In $KAT is/are $w file(s)"
    else
        echo -n "$KAT does not exist, should I create a directory? [y/n] "
        read ans
        if [ $ans = "Y" ] || [ $ans = "y" ]; then
            mkdir $KAT
            echo "The directory $KAT has been created."
            ls -l |grep ^d
        fi
    fi
    echo -n "Quit? [y/n] "
    read ans
done
