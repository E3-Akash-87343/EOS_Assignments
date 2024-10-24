# 3. Write a shell script to accept the name from the user and check whether user entered
#    name is file or directory. If name is file display its size and if it is directory display its   
#    contents.

echo -e -n "Enter file name: "
read fname

if [ -e $fname ]
then
	if [ -d $fname ]
	then
		echo "Entered File is Directory"
	elif [ -f $fname ]
	then
		echo "Entered file is Regular File"
	fi
else
	echo "File not found"
fi	
