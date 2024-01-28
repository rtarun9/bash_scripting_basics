#! /usr/bin/bash

echo "Enter the start index"
read start_index

echo "Enter the end index"
read end_index

if [ $start_index -gt $end_index ] 
then
	echo "Invalid, start index cannot be greater than end index"
	exit 1
fi

i=$start_index

while [ $i -le $end_index ]
do
	echo $i
	i=$(($i + 1))
done


