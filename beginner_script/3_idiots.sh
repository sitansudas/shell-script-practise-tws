#!/bin/bash

# user defined varibales,(made by the user)

hero="rancho"
villain="virus"

echo "3 idiots ka hero hai $hero"

echo "3 idiots ka villain hai $villain"

# shell / enviorment varibales bhi hote hain (pre-defined), use "printenv" in terminal to get info abt it..

#example:-
echo "The current logged in user is $USER"

#HOW INPUT WORKS ?

read -p "rancho ka full name kya tha? " fullname 
# "read" act as input main command
# "-p" act as the prompt that show the input message
# "fullname" is the varibale where input value will be stored

echo "rancho ka fullname $fullname tha"

#ARGUMENTS:-

#./3_idiots.sh raju farhan rancho
#suppose this is the command to give 
#process:- filename also becomes an argument
#Total no of argumetns here 4 but it follows Indexing 0 1 2 3

echo "Movie ka naam $0"
# $0 gives the 1st argument which is "./3_idiots"

echo "1st idiot ka naam $1"
# $1 gives 2nd argument which is "raju"

echo "2nd idiot ka naam $2"

echo "3rd idiot ka naam $3"

echo "The total no of idiots: $#"
# "$#" shows the no of arguments passed
# Excluding the "$0" th position argument

echo "Hence the three idiots are $@"
# Here the "$@" means print all the arguments in order
# Except the first one which is "$0"


#For Multiline comment use
<<help


help
