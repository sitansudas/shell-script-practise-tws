#!/bin/bash

<<INFO

It is a script which creates user using Arguments..
INFO
echo "======= Creation of the User with Password Started ======="

echo "Please give the argument in this Order file_name user_name pass_word if get any ERROR!!"
echo
echo "USERNAME=$1"
echo "PASSWORD=$2"

sudo useradd -m -s /bin/bash $1
echo "$1:$2"|sudo chpasswd

echo "======= Creation of the User with Password Completed ======="
