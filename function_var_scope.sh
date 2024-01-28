#!/usr/bin/bash

some_function() {
	echo "Argument 1 : " $1
	echo "Argument 2 : " $2

	echo "The value of X is : $x"

	x=4

	echo "In the function, value of x is set to : $x"
}

x=3
echo "Because function call, value of x is : $x"
some_function 3 4
echo "After function call, value of x is : $x"

