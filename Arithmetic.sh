#!/bin/bash

read -p "Enter the first number : " a
read -p "Enter the second number : " b
read -p "Enter the third number : " c
declare -A results
compute1=$(($a+$b*$c))
compute2=$(($a*$b+$c))
compute3=$(($c+$a/$b))
compute4=$(($a%$b+$c))
results[1]=$compute1
results[2]=$compute2
results[3]=$compute3
results[4]=$compute4
echo "Dictionary = " ${results[@]}
