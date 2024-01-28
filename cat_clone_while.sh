#! /usr/bin/bash

echo "Enter file name you want to cat"
read file_name

while read line
do
	echo $line
done < $file_name
