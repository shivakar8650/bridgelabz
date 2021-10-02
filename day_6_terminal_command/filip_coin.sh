#!/bin/bash -x

head=0
tail=0

while [[ $head -lt 11 && $tail -lt 11 ]]
do
    toss=$(($RANDOM % 2))
     echo "$toss"
     if [[ $toss == 1 ]]
     then
    let head+=1
      echo "head $head"
     else
    let tail+=1
      echo "tail $tail"
    fi
done

