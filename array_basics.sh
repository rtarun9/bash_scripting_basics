#!/usr/bin/bash


arr=()

echo "The size of array is now : ${#arr[@]}"

arr+=(1)
arr+=(2)

echo "The size of array is now : ${#arr[@]}"
echo "The elements of array (using * notation) is : " ${arr[*]}

arr+=(3)
arr+=(9)

echo "The elements of array now (Using C style for loop) Is"
num_elements=${#arr[@]}
echo "Num elements :: $num_elements"

for ((i=0; i<$num_elements; i++))
do
	elem=${arr[${i}]}
	echo $elem
done

unset arr[2]

echo "arr[2] has been unset"

echo "The elements of array now (Using C style for loop) Is"
num_elements=${#arr[@]}
echo "Num elements :: $num_elements"

for ((i=0; i<$num_elements+1; i++))
do
	elem=${arr[${i}]}
	echo $elem
done

echo "The elements of array (using * notation) is : " ${arr[*]}
