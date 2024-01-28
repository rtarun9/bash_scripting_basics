#!/usr/bin/bash

func() {
	x=4
	local y
	y=8
}

echo "x is now : $x"
echo "y is now : $y"
func 
echo "After func was called, x is now : $x"
echo "After func was called, y is now : $y"
