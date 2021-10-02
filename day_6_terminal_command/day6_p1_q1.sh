#!/bin/bash -x

read -p "enter the number" num
count=1
while [ $count -le $num ]
do
value=`echo "2 ^ $count" | bc`
(( count++ ))
echo $value
done
