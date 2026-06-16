#!/bin/bash

<<help

this is a shell script 
to create users and check a user if it exist or not and delets it too 

help
 # USER CREATION WITH HASH PASSWORD
echo "======= Creation of User Started ======="

read -p "Enter the username:" username

read -sp "Enter the password:" password 

echo 

# the -s will hide the password content as per standard linux way
# -p needs the next argument to be the propmt string so keep it closer

sudo useradd -m -s /bin/bash "$username"
echo "$username:$password"| sudo chpasswd

<<INFO
sudo useradd -m -p "$ password" -s /bin/bash "$ username" (password wont stay in hash code format)

-m is a single option that creates home directory for user
-s and -p are not single option commands so they need their along part with them
In these case when using the command keep the values near to them or gives ERROR
For better password protection like hash convertion use chpasswd
-p doesnt convert normal password to hash codes so we use chpasswd 
TRY THE HASH CODE PASSWORD...
INFO

echo "======= Creation of User Completed ======= "


read -p "Enter the Username to check whether it exist or not: " username1

if  id "$username1" &>/dev/null;
then
 	echo "Yes User exist By this Username"

	read -p "If you want to delete this user press y if not then n: " agreement

	if [ "$agreement" == "y" ];
	then
		sudo userdel -r "$username1" &>/dev/null
		sudo rm -rf /home/"$username"
		echo "======= User Deletion Completed ======="
	else
		echo "You didnt selected y so user was not deleted.."
	fi	
else
	echo "The user by this username does not exist"	
fi	



