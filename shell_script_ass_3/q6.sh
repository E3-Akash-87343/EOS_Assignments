# 6. Write a Program to find whether a given year is a leap year or not



#!/bin/bash

echo -e -n "Enter the year:"
read year

if [ `expr $year % 4` -eq 0 -a `expr $year % 100` -ne 0 -o `expr $year % 400` -eq 0 ]
then
	echo "Entered year is leap year"
else
	echo "Entered year is NOT leap year"
fi
