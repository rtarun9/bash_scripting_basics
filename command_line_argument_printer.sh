#! /usr/bin/bash

# $# like array will give number of arguments
max_command_line_args=$#
echo "Num arguments" $#

for (( i=1; i <= ${max_command_line_args}; i++ ))
do
	echo "Argument " $i
	arg_copy=$i
	# The $! is a indirect reference.
	# This {$!} means get the value of the variable with the name of arg_copy, i.e $i
	# Normally, if you do $arg_copy you will just get 1, 2, 3, etc (the current value of i).
	# However, in this case, you want the value of the VARIABLE whose name is $1. So, indirect reference is used here.
	echo ${!arg_copy}
done
