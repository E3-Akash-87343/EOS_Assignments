# 7. Write a Program to find whether a given number
#    is positive or negative

#!/bin/bash

echo -e -n "Enter the number: "
read num

if [ $num -gt 0 ]
then
	echo "Entered number is POSITIVE"
elif [ $num -eq 0 ]
then
	echo "Entered num is ZERO or Invalid"
else
	echo "Entered number is NEGATIVE"
fi
