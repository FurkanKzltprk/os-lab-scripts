#!/bin/bash
#script counting files in directories/subdirectories
#Alternative version

echo -n "Enter directory name: "
read dir_name
fil=0
if [ -d $dir_name ]; then
    for i in `ls $dir_name`
    do
        if [ -d $i ]; then #for subdirectories
            fil=$[$fil - 1] # subdirectory is not counted
            j=0
            for x in `ls $i`
            do
                j=$[$j + 1]
            done
            echo "Subdirectory $i: there is/are $j file(s)"
        fi
        fil=$[$fil + 1]
    done
    echo "There is/are $fil file(s) in $dir_name"
fi
