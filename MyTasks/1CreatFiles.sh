#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0  <number_of_files> <base_name> <extension>"
    exit 1 
fi

n=$1
name=$2
extension=$3

for ((i=1; i<=n; i++))
do
    touch "${name}_${i}.${extension}"
done

echo "Successfully created $n files."


