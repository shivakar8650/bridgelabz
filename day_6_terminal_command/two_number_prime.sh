#!/bin/bash -x
#check the two number is prime

function check_palindrome(){
num1=$1
num2=$2
temp=0
rev=0
while [ $num1 -gt 0 ]
do
  temp=$(( num1%10 ));
  rev=$(( $rev*10 + $temp ));
  num1=$(( $num1/10 ));
done

if(( $rev==$num2 ));
then
  echo "numbers are palindrome"
else
   echo "numbers are not a palindrome"
fi
}

read -p "enter the number1 :" num1
read -p "enter the number2 :" num2

check_palindrome $num1 $num2