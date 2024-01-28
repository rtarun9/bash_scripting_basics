#!/usr/bin/bash

arg_count=0
arg_idx=1

while [ ! -z  ${!arg_idx} ]
do
	echo ${!arg_idx}
	arg_count=$(($arg_count + 1))

	arg_idx=$((arg_idx + 1))
done

echo "Number of arguments : $arg_count"
