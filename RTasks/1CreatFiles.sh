#! + /bin/bash

#↑↑↑ "Shebang tells the system to execute this script using the Bash shell." ↑↑↑

# $ = to get to a value of a variable
# # = to get the number of parameters passed to the script
# #$ = total number of incoming parameters
#exit 1 = error code,  exit 0 = success code.

#!/bin/bash 

 # Check if exactly 3 arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <number_of_files> <base_name> <extension>"
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

echo "Succesfullt created $n files."


