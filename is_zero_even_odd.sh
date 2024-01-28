#! /usr/bin/bash

echo "Enter a number"
read number

num_mod_2=$(($number % 2))

if [  $num_mod_2 -eq 0  -a  $number -ne 0  ]
then
	echo "The number ${number} is EVEN"
elif [ $num_mod_2 -eq 1 ]
then
	echo "The number ${number} is ODD"
else
	echo "The number ${number} is ZERO"
fi
