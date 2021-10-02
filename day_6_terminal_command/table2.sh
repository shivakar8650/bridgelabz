#!/bin/bash -x
value=0
read -p "enter the input " n
 limit=`echo "2 ^ $n" | bc`
for (( i=0; $value<$limit; i++))
do
    value=`echo "2 ^ $i" | bc`
    echo $value
done
