#!/usr/bin/bash

echo "Enter your age"
read age

echo "Your age is ${age:="Default Value"}"

echo "Enter your birthday"
read birth_day

birth_day="${birth_day:-'Unset'}"

echo "Your birth day is ${birth_day}"
