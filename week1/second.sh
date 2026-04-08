#!/bin/bash


echo "Hi $USER"


#Ask the user and read the input

echo -n "Is it morning? (Y/N):"
read ans


#check if the answer is Yes (Y or y)
if [ "$ans" == "Y" ] || [ "$ans" == "y" ]; then 
	echo "Good morniing kankaa !" 

#check if the answer is no (N or n)
elif [ "$ans" == "N" ] || [ "$ans" == "n" ]; then
	echo "Good afternon gardassss !"

#If the input  is something else 
else 
	echo "Wrong answer !! change it kanka !!"

fi 


exit 0
