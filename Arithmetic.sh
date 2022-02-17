#!/bin/bash

read -p "Enter the first number : " a
read -p "Enter the second number : " b
read -p "Enter the third number : " c
declare -A results
declare -a resultInArray
compute1=$(($a+$b*$c))
compute2=$(($a*$b+$c))
compute3=$(($c+$a/$b))
compute4=$(($a%$b+$c))
results[compute1]=$compute1
results[compute2]=$compute2
results[compute3]=$compute3
results[compute4]=$compute4
echo "Results in Dictionary = " ${results[@]}

function storeIntoArray(){
for(( index=0; index<${#results[@]}; index++ ))
	do
		resultInArray[index]=${results[$index]}
	done
echo "Results in array = " ${resultInArray[@]}
}
storeIntoArray

function descendingSorting(){
   for (( i=0; i<${#resultInArray[@]}; i++ ))
   do
      temp=0
      for (( j=0; j<${#resultInArray[@]}; j++ ))
         do
            if [[ ${resultInArray[j]%.*} -lt ${resultInArray[i]%.*} ]]
            then
               temp=${resultInArray[i]}
               resultInArray[i]=${resultInArray[j]}
               resultInArray[j]=$temp
            fi
         done
   done
echo "Array in descending order => " ${resultInArray[@]}
}
descendingSorting
