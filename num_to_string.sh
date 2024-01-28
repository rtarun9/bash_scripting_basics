#! /usr/bin/bash

echo "Enter the digit (valid range : 0 -> 9 )"
read digit

case $digit in
	0)
		echo "Zero"
		;;
	1)
		echo "One"
		;;
	2)
		echo "Two"
		;;
	3)
		echo "Three"
		;;
	4)
		echo "Four"
		;;
	5)
		echo "Five"
		;;
	6)
		echo "Six"
		;;
	7)
		echo "Seven"
		;;
	8)
		echo "Eight"
		;;
	9)
		echo "Nine"
		;;
	*)
		echo "Invalid option. Please run the script and enter valid digit"
		;;
esac
