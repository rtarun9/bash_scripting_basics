#!/usr/bin/bash


echo "Enter N. This script will find fib sequence from 1 to N"
read n

fib() {
	if [ $1 -lt 0 ]; then
		return 0
	elif [ $1 -le 1 ]; then
		return $1
else

	fib $(($1 - 2))
	local a=$?

	fib $(($1 - 1))
	local b=$?

	return $(($a + $b))
	fi
}

for ((i=0; i <= $n; i++))
do
	fib $i
	echo "Fib of $i is $?"
done
