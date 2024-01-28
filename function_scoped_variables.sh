#!/usr/bin/bash

func() {
	echo "Inside the function"
	echo "Arg 1 : " $1
	echo "Arg 2 : " $2
	echo "Arg 3 : " $3
	echo "All args : $@"
	echo "Arg count : $#"
}

echo "Outside the function value of all arguments is : " $@
func a b c d 
