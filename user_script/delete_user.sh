#!/bin/bash

<<help

this is a shell script 
to create users...

help

#USER CREATION PROCESS FUNCTION

function user_create {
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

}

#USER EXIST CHECK PROCESS FUNCTION

function user_check {

read -p "Enter the username to check its existance: "	
count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then
	echo "User does not exist"
else
 	echo "The user Exist"
fi	

}

#USER DELETE PROCESS FUNCTION

function user_delete {

read -p "Enter the username that You want to Delete: " username

sudo userdel -r $username &>/dev/null

echo "======= Deletion of the User Completed ======="

}



user_create
user_check
user_delete

