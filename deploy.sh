#!/bin/bash

echo "##############################"
echo "#           LOG IN           #"
echo "##############################"
 
read -p "Enter User Name : " userName
read -p "Enter Password : " password



if [ $userName == "Admin" -a $password == "Abc" ]
then
	echo "##############################"
	echo "#         Select Option      #"
	echo "##############################"
	echo "1)  Deploy Production"
	echo "2)  Develp Development"
	echo "3)  Deploy QA"
	echo "99) Exit"
	read -p "Select your option (1, 2, 3 or 99) : " option
	if [ $option == 1 ]
	then
		echo "##############################"
		echo "#    Production Deployment   #"
		echo "##############################"
		read -p "Do you want to deploy(Y): " prodOption
			if [ $prodOption == "Y" ]
			then
				cd WorkingDirectory
				cp *.html ../Prod
				cp *.env ../Prod
				echo "Done"
				else
					exit		
			fi
	elif [ $option == 2 ]
	then
		echo "##############################"
		echo "#   Development Deployment   #"
		echo "##############################"
		read -p "Do you want to deploy(Y): " devOption
			if [ $devOption == "Y" ]
			then
				cd WorkingDirectory
				cp *.html ../Dev
				cp *.env ../Dev
				echo "Done"
				else
					exit		
			fi
	elif [ $option == 3 ]
	then
		echo "##############################"
		echo "#   Development Deployment   #"
		echo "##############################"
		read -p "Do you want to deploy(Y): " qaOption
			if [ $qaOption == "Y" ]
			then
				cd WorkingDirectory
				cp *.html ../QA
				cp *.env ../QA
				echo "Done"
				else
					exit		
			fi
	elif [ $option == 99 ]
	then
		exit
	fi
else
	echo "Wrong Password or User Name"
fi



