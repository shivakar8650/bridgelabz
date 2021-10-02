#!/bin/bash -x

read -p "enter the number " num
count=0
for (( i=2; $i<=$num/2 ; i++ ))
do
   if [ $(($num % $i)) == 0 ]
    then
    let  count+=1
     fi
done
  if [[ $count == 0 ]]
  then
     echo "$num is a prime number"
   else
     echo "$num not prime number"
   fi
