#!/bin/bash -x
function temp_conversion(){
echo " change degC to degF choose 1:"
echo " change degF to degC choose 2:"
read input
echo $input

case $input in
     1)
         valid=0
         while [ $valid -eq 0 ]
         do
            read -p "enter the temperature :" temp
          if [[ $temp -ge 0 &&  $temp -le 100 ]]
           then
              output=$[ $temp*(9/5) +32 ]
           echo "temp in farenheit is $output"
           valid=1
           else
             echo "enter the temperature again between 0 to 100"
           fi
        done

      ;;
     2)
             valid=0
         while [ $valid -eq 0 ]
         do
            read -p "enter the temperature :" temp
          if [[ $temp -gt 32 &&  $temp -lt 212 ]]
           then
               one=$(echo "scale=2; 10/9" | bc )
               two=$[temp-32]
              output=$(echo "scale=4; $two*$one" | bc )
           echo "temp in celcius is $output"
           valid=1
           else
             echo "enter the temperature again between 32 to 212"
           fi
        done
       ;;
     *)
       echo "choice is not valid"
        ;;
esac

}

temp_conversion  