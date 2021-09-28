#!/bin/bash    -x

echo "1. feet to inch"
echo "2. inch to feet"
echo "3. feet to Meter"
echo "4. meter to feet"
read -p "choose any one :" num

case $num in
   1)
    read -p "enter the number" feet 
      echo "value in inch :$(($feet * 12 )) "
       ;;
   2 )
    read -p "enter the number " inch
      echo `echo "scale=2; $inch * 0.0833 " | bc `" feet"
          ;;
   3) read -p "enter the number" feet
      echo `echo "scale=2; $feet*0.3048 " | bc `" meter" 
      ;;
   4)  read -p "enter the number" meter
      echo `echo "scale=2; $meter*3.2808" | bc `" feet"
      ;;
   *)
    echo "choose again"
   ;;
esac

