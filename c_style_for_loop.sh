#! /usr/bin/bash

echo "Enter start index"
read start_index

echo "Enter end index"
read end_index

echo "Is the end_index inclusive or exclusive? (0 for yes, 1 for no)"
read option

if [ $option -eq 1 ]
then
	end_index=$(($end_index - 1))
fi

echo "The iteration starts here...."
for ((i=$start_index; i <= $end_index; i++ ))
do
	echo $i
done
