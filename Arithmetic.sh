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
results[1]=$compute1
results[2]=$compute2
results[3]=$compute3
results[4]=$compute4
echo "Dictionary = " ${results[@]}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> UC7-ReadDictionaryValuestoArray
=======
>>>>>>> UC8-SortDescending

for((k=1; k<5; k++ ))
do
	resultInArray[k]=$(( ${results[$k]} ))
done
echo "Array = " ${resultInArray[@]}
<<<<<<< HEAD
<<<<<<< HEAD
=======
#storeIntoArray
>>>>>>> UC8-SortDescending

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
echo "Array in descending order : " ${resultInArray[@]}
}

function ascendingSorting(){
   for (( i=0; i<${#resultInArray[@]}; i++ ))
   do
      temp=0
      for (( j=0; j<${#resultInArray[@]}; j++ ))
         do
            if [[ ${resultInArray[j]%.*} -gt ${resultInArray[i]%.*} ]]
            then
               temp=${resultInArray[i]}
               resultInArray[i]=${resultInArray[j]}
               resultInArray[j]=$temp
            fi
         done
   done
echo "Array in ascending order : " ${resultInArray[@]}
}
ascendingSorting
descendingSorting
<<<<<<< HEAD

=======
>>>>>>> UC6-StoreInDictionary
=======
>>>>>>> UC7-ReadDictionaryValuestoArray
=======
>>>>>>> UC9-SortAscending
