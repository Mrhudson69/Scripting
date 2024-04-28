#!/bin/bash

# Argument is declared when you run the script
# $1 is the first argument
# $2 is the second argument
# $3 is the third argument 

# It is possible to have more than one argument
# $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 and so on



# echo " You entered the argument $1"
# echo " Your second is argument $2"


lines=$( ls -lah $1 | wc -l )

if [ $# -ne 1 ]
then 
	echo "You need to enter one argument"
    echo "please try again..."
	exit 1
fi

echo "The number of lines in the $1 dir is $((lines - 1 ))"

