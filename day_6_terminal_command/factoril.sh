#!/bin/bash -x

read -p "enter the input :" num
result=1
for (( i=1; i<=$num; i++))
do
  result=$(($result * $i))
done
echo $result

