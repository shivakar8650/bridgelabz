#!/bin/bash -x


read -p "entetr the number:" num

if [[ $num -ge 0 && $num -le 9 ]]
then 
  echo "unit digit"
elif [[ $num -ge 10 && $num -le 99 ]]
then
  echo "ten digit"
elif [[  $num -ge 100 && $num -le 999 ]]
then
  echo "hundred digit"
elif [[ $num -ge 1000 && $num -le 9999 ]]
then
  echo "thousand digit"
else
  echo "bigger than thousand"
fi

