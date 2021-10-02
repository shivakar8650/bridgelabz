#!bin/bash -x
#check the number is palindrome and prime.

for1=0
for2=0
check_palindrome() {
 num=$1
 temp=0
 rev=0
 while [ $num -gt 0 ]
 do
   temp=$(( $num%10 ))
   rev=$(( rev*10 + $temp )) 
   num=$(( $num/10 ))
 done

 if(( $1==$rev ))
 then
  for1=1
  echo "$1 is a palindrome"
 else
  echo "$1 not a palindrome"
 fi
 
}

check_prime() {
num=$1
count=0
for (( i=2; i<=$num/2; i++ ))
do
  if [ $num%$i == 0 ]
  then
    count=1
  fi
done
if [ $count == 0 ]
then 
echo "$1 is a prime"
fi  
for2=1

}

read -p "ener the number: " num
check_prime $num
check_palindrome $num
if [[ $for1 -eq 1 && $for2 -eq 1 ]]
then 
   echo "prime and palindrome both"
elif [[ $for1 -ne 1 && $for2 -eq 1 ]]
then 
   echo "only prime number"
elif [[ $for1 -eq 1 && $for2 -ne 1 ]]
then
   echo "only palindrome"
else
   echo "not prime not palindrome"
fi

