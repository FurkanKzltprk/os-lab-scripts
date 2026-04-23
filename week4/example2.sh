#!/bin/bash
#script counting files in directories/subdirectories

echo -n "Enter directory name: "
read dir_name
fil=0
if [ -d $dir_name ]; then
    fil=`ls -l $dir_name|grep ^-|wc -l`
    ls -l $dir_name|grep ^d > f.txt
    for i in `awk '{ print $9 }' f.txt`
    do
        fill=`ls $dir_name/$i|wc -l`
        echo "Subdirectory $i: $fill file(s)"
    done
fi
echo "Directory $dir_name: $fil file(s)"
