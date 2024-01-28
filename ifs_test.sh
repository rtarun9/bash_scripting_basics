#!/usr/bin/bash

IFS=" "
echo "Enter 4 strings / numbers"
read a b c d

echo "a : $a"
echo "b : $b"
echo "c : $c"
echo "d : $d"

echo "Now, IFS is :. Enter 4 strings / numbers separated by :"
IFS=":"
read a b c d

echo "a : $a"
echo "b : $b"
echo "c : $c"
echo "d : $d"

echo "Now, IFS is !. Enter 4 strings / numbers separated by ."
IFS="!"
read a b c d

echo "a : $a"
echo "b : $b"
echo "c : $c"
echo "d : $d"
