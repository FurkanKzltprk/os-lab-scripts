#!/bin/bash

#↑↑↑ "Shebang tells the system to execute this script using the Bash shell." ↑↑↑

# This program allows us to create as many files as we want.
# we can also specify the file extension

# $ = to get to a value of a variable
# # = to get the number of parameters passed to the script
# #$ = total number of incoming parameters


 # Check if exactly 3 arguments are provided
 # bu if bloğu doğru sayıda parametre girip girmediğimizi kontrol eder.
 # thi if block checks if the correct number of parameters is provided. .
 # If not, it prints a usage message and exits with an error code
 # #$ = total number of incoming parameters
 # exit 1 = error code,  exit 0 = success code.

if [ "$#" -ne 3 ]; then
    echo "Usage: $0  <number_of_files> <base_name> <extension>"
    exit 1 
fi

#Assign parameters to variables for better readability
n=$1
name=$2
extension=$3

# Loop 'n' times to create the files

for ((i=1; i<=n; i++))
do
    touch "${name}_${i}.${extension}"
done

echo "Successfully created $n files."


