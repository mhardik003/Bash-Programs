#! /bin/bash
tempstr=$( echo $1 | tr "," " " )
declare -a numbers
numbers=($(echo $tempstr ))
echo -n  "Original array : "
echo -n "${numbers[*]}"
echo
let length=${#numbers[*]}
for ((i = 0; i<length; i++))
do
    
    for((j = 0; j<$((length-i-1)); j++))
    do
    
        if [ ${numbers[j]} -gt ${numbers[$((j+1))]} ]
        then
            # swap
            temp=${numbers[j]}
            numbers[$j]=${numbers[$((j+1))]}  
            numbers[$((j+1))]=$temp
        fi
    done
done
echo -n "Sorted Array : "
echo -n "${numbers[*]} "
echo
