#!/bin/bash


#!/bin/bash

# Check if exactly 3 parameters are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <number_of_files> <base_name> <extension>"
    exit 1
fi

# Assign parameters to variables for better readability
n=$1
name=$2
extension=$3

# Loop 'n' times to create the files
for ((i=1; i<=n; i++))
do
    touch "${name}_${i}.${extension}"
done

echo "Successfully created $n files."