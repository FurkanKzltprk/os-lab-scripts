#!/bin/bash
read -p "Enter the name of the file or directory you are looking for : " target_name

#Check if it exists ¿?

if [ -e "$target_name" ]; then
    echo "Result : $target_name exists. "
    #check if it is a directory (-d) 
    if [ -d "$target_name" ]; then
    echo "Type: Directory. Listining contents:"
    echo "------------------------------"
    ls -l "$target_name"

    else 
        #If it exists but is not a directory, it's a file 
        echo "Type: File. Showing contents:"
        echo "------------------------------"
        cat "$target_name"
    
    fi

else 
    echo "Result : $target_name does not exist."

fi
