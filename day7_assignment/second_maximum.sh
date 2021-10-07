#!/bin/bash -x

max1=0;
max12="unset";
temp=0;
declare -a ARRAY1
for i in  {1..10}
do
	x=$((($RANDOM%900 )+100))
	ARRAY1[i]=$x
done

echo ${ARRAY1[*]}

for (( j=0; j<=10; j++))
do
  for (( k=$j; k<=10; k++))
  do
    if [[ ${ARRAY1[$j]} -gt ${ARRAY1[$k]} ]];
     then
        temp=${ARRAY1[$j]}
        ARRAY1[$j]=${ARRAY1[$k]}
        ARRAY1[$k]=$temp
   fi
  done

done 

echo "Array in sorted order :"
for (( i=0; i <= 10; i++))
do
 echo ${ARRAY1[$i]}
done
last=${#ARRAY1[@]}
echo "length :$last"
echo "second smallest:${ARRAY1[2]}"
echo "second largest:${ARRAY1[$last-1]}"