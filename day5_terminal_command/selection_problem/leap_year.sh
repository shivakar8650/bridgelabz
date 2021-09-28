#!/bin/bash -x

read -p"Enter the year:" year

if [[ $year -ge 1000 && $year -le 9999 ]];
then
    if [[ $(($year % 4)) == 0 ]]
     then 
         if [[ $(($year % 100)) == 0 ]]
         then
             if [[ $(($year % 400)) == 0 ]]
                then
                   echo "$year is a leap year"
              else
                 echo "$year is not leap year"
             fi
          else
          echo "$year is not a leap year"
          fi
        echo "$year is a leap year"
      else
     echo "$year is not leap year"
     fi
else
echo "not valid input"
fi
