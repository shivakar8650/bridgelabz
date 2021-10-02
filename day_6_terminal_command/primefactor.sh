#!/bin/bash -x

read -p "enter the number :" num

for (( i=2; i<=$num; i++ ))
do
   if [ $(($num%$i)) -eq 0 ]
   then
          count=0
        for ((j=2; j<=$i/2; j++))
        do
          if [ $(($i%$j)) == 0 ]
          then
           count=1
           break
          fi
        done

        if [ $count == 0 ]
         then
         echo " $i"
        fi
    fi
done
