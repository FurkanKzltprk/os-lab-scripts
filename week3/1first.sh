#!/bin/bash
 echo "different ways to use the for command" 
 i=1
 echo 1st:
 while [ $i -le 10 ]; do
         echo -n "$i"
         let "i++"
 done
 echo

 echo 2nd:
 for i in 1 2 3 4 5 6 7 8 9 10; do
         echo -n " $i "
 done
 echo

 echo 3rd
 for i in 'seq 1 10'; do
         echo -n " $i "
 done
 echo

 echo 4th:|
         for((i=1; i<=10; i++));do
                 echo -n " $i "
         done
         echo
                                    
