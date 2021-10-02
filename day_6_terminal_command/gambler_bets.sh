#!/bin/bash -x
betcount=0
rs=100
count_win=0
while [[ $rs -gt 0 && $rs -lt 200 ]]
do
     bet=$(($RANDOM%2))
    echo
 if [ $bet ==  0 ]
  then
   let rs-=1
   echo "loss"
 else
   let rs+=1
    let count_win+=1
    echo "win"
  fi
 let betcount+=1
done
echo "total bets: $betcount"   
echo "total no of win: $count_win"
