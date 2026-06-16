#!/bin/bash

<<info
This Shell Script Checks If User Exist or Not

info

read -p "Enter the Username You want to Check:" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then
	echo "User does not Exist"
else
        echo "User Exist"
fi	
