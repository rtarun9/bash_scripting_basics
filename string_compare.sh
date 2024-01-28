#!/usr/bin/bash

echo "Enter string 1"
read string_1

echo "Enter string 2"
read string_2

if [ $string_1 = $string_2 ]; then
	echo "Both strings are equal in content"
else
	echo "Both strings are not equal"
fi
