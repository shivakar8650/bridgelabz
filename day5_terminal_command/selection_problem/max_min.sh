#!/bin/bash -x
   max=0
   min=0
  echo "only three digit value is valid"
for((i=0;i<5;i++))
do
  read -p "Enetr the value $(($i+1)) :" input
   if [[ $input -ge 100 && $input -le 999 ]];
   then
    {   if [[ $i == 0 ]]
          then 
            { let  max=$input
              let  min=$input
            }
        else
            {
           if [[ $input -ge $max ]]
             then
             {
	      let max=$input
              }
           fi
           if [[ $input -le $min ]]
            then
             { let min=$input
              }
            fi
        }
        fi
          echo $input
     }
     else
     let i-=1
      echo "input not valid"
   fi
done
echo "max: $max  and min: $min"


