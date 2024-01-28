#!/usr/bin/bash

arr=(-99 -80 -32 -12 -1 0 5 5 7 19 25 90 102 105 105 999)

echo "The input array is : " ${arr[*]}

lower_bound=0
upper_bound=$((${#arr[@]} - 1))

echo "Enter the target variable"
read target

if  [ $target -lt  ${arr[${lower_bound}]} ] || [ $target -gt  ${arr[${upper_bound}]} ]
then
	echo "Cannot proceed with binary search, as target is out of bounds of array"
	exit 1
fi

while [ ${arr[${lower_bound}]} -le ${arr[${upper_bound}]} ]
do
	mid=$((($lower_bound + $upper_bound) / 2))
	if [ ${arr[$mid]} -eq $target ]; then
		echo "Found $target at index : $mid"
		exit 0
	elif [ ${arr[$mid]} -gt $target ]; then
		upper_bound=$(($mid - 1))
	elif [ ${arr[$mid]} -lt $target ]; then
		lower_bound=$(($mid + 1))
	fi
done

echo "Could not find $target in array"
