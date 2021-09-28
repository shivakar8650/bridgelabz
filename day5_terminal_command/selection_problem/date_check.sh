#!/bin/bash  -x

read -p "enter the day:" day
read -p "enter the month:" month
   
   if [[ $month == "March" ]]
      then
       if [[ $day -gt 20 && $day -le 31 ]]
        then
          echo "true"
       fi
   elif [[ $month == "June" ]]
      then 
         if [[ $day -lt 20 && $day -gt 0 ]]
          then 
            echo "true"
         fi
   elif [[ $month == "April" || $month == "May" ]]
      then 
        echo "true"
   else
     echo "false"
   fi

