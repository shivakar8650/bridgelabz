#!/bin/bash -x

read -p "enter the number :" num
echo $num
i=1
echo -n "H = 1/$i "
for (( i=2; i<=$num; i++ ))
do
 echo -n "+ 1/$i "
done

