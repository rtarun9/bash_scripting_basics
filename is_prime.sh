#! /usr/bin/bash

echo "Enter the number which you want to determine is prime or not"
read number

if [ $number -lt 0 ]
then
	number=$(($number * -1))
fi

if [ $number -eq 1 ]
then
	echo "1 is neither prime nor composite"
	exit 0
fi

# Now, loop from 2 to n - 1 (inclusive) and see if number mod anything is 0.
# If such a value from [2, n - 1] is found, the number is indeed prime.

for ((i=2; i < $number; i++ ))
do
	if [ $(($number % $i)) -eq 0 ]
	then
		echo "$number is NOT prime as it is divisible by $i"
		exit 0
	fi
done

echo "$number is indeed PRIME"
