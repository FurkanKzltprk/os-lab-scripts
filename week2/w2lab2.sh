#!/bin/bash

# Target name is the first parameter
name=$1

# Check if the parameters are given ($# is not equal to 0)
if [ $# != 0 ]; then
    
    # Check if it exists
    if [ -e "$name" ]; then
        echo "$name exist"
        
        # Check if it is a directory (-d)
        if [ -d "$name" ]; then
            echo "Directory $name listing"
            echo "------------------------"
            ls -l "$name"
        else
            # If not a directory, read the file
            echo "File listing:"
            echo "^^^^^^^^^^^^^^^^^^"
            cat "$name"

            #alt satıra geçsin diye echo ekledim
            echo ""
        fi
    else
        echo "$name not exist"
    fi

else
    # If no parameter is given, show how to use it
    echo "Call the script as follows: $0 parameter"
fi