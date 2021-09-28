#!/bin/bash -x
 read -p "Enter first number:" x
 read -p "Enter second number: " y
#  echo " $x + $y " | bc
  x=`echo " $x + $y " | bc`
   echo $x

