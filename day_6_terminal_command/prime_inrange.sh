#!/bin/bash -x

read -p "enter the first number in range: " num1
read -p "enter the last number in range:  " num2
echo "$num1 $num2"
#for num in {$num1..$num2}
for (( num=$num1; num<=$num2; num++))
do
count=0
    for (( i=2; $i<=$num/2; i++ ))
     do
         if [ $(($num % $i)) == 0 ]
      then
          let  count+=1
      fi
    done
      if [ $count == 0 ]
      then
      echo "$num is a prime number"
      fi
done



