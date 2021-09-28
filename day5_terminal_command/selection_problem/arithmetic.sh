#!/bin/bash -x

read -p "enter three numbers:" num1 num2 num3

echo "$num1 $num2 $num3"
  max=0
  min=0
   output1=$(($num1 + $(($num2 * $num3)) ))
  echo "$output1"
    max=$output1
    min=$output1
   output2=$(($num3 + $(( $num1 / $num2))))
    echo "$output2"
    if [[ $output2 -ge $max ]]
    then let max=$output2
    fi
    if [[ $output2  -le $min ]]
     then let min=$output2
     fi
     output3=$(($(($num1 % $num2)) + $num3))
      echo "$output3" 
     if [[ $output3 -ge $max ]]
      then
          let max=$output3
       fi
      if [[ $output3  -le $min ]]
       then let min=$output3
       fi
       output4=$(($(($num1 * $num2)) + $num3))
    echo "$output4"   
    if [[ $output4 -ge $max ]]
     then let max=$output4
      fi
     if [[ $output4  -le $min ]]
      then let min=$output4
     fi  
 echo "max:$max  min:$min"

