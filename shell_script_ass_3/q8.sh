# 8. Write a program to print the table of a given number.

#!/bin/bash
echo "Enter Num : "
read n1
i=1
while [ $i -le 10 ]
do
	res=`expr $i \* $n1`
	echo "$res"
	i=`expr $i + 1`
done

###############################################      
i=1
#        1  >  10
#       10  >  10
#       11  > 10
until [ $i -gt 10 ]
do
	res=`expr $i \* $n1`
	echo -n -e "$res "
	i=`expr $i + 1`
done

