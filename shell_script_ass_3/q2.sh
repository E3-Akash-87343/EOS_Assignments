#2. Write a shell script to display menu like “1. Date, 2. Cal, 3. Ls, 4. Pwd, 5. Exit” and
#	execute the commands depending on user choice.

choice=1
#until [ $choice -eq 0 ]
#do
while [ $choice -ne 0 ]
do
echo "Menu : "
echo -n -e " 1.Date\n 2.cal\n 3.Ls\n 4.Pwd\n 5.Exit\n"

echo -e -n "Enter your choice : "
read choice

case $choice in
	1) res= date
		echo "Date:"
		echo "$res"
			;;

	2) res= cal
		echo "Calender:"
		echo "$res"
			;;
	
	3) res= ls
		echo "ls command"
		echo "$res"
			;;
	
	4) res= pwd
		echo "pwd command"
		echo "$res"
			;;
	
	5) exit
		;;	

	*) echo "Inavlid Choice"

esac
done
