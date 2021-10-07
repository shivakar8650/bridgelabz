#!/bin/bash -x

function add() {
 a=$1
 b=$2

added=$(($1+$2))
return $added
}

read -p "enter number 1 "  n1
read -p "enter number 2 "  n2

add $n1 $n2 
c=$?
echo $c
