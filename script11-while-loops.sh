#!/bin/bash

# -------- Script One ---------

# myvar=1

# while [ $myvar -le 100 ]
# do
# 	echo "$myvar"
# 	myvar=$((myvar+1))
#     sleep 0.2s
# done


# --------- Script Two ---------

# while [ -f ~/myvar.txt ]
# do 
#     echo "the file exists..."
#     sleep 0.5s
# done

# echo "File doesen't exist's so exiting script"

# --------- Script Three ---------

# while [ -f ~/Scripting/myvar.txt ]
# do 
#     echo "the $(date) file exists..."
#     sleep 0.5s
# done

# echo "$(date) File doesen't exist's so exiting script"

# --------- Script Four Question ---------
# Write a bash script that prints numbers from 1 to 5 using a while loop.

# myvar=1

# while [ $myvar -le 5 ]
# do 
#     echo "$myvar"
#     myvar=$((myvar+1))
#     sleep 0.5s
# done


# --------- Script Five Question ---------
# Create a bash script that asks the user to enter a number and then prints "Hello" that many times using a while loop.

echo "Enter a number :"
read myvar 

while [ $myvar -gt 0 ]
do
    echo "Hello"
    myvar=$((myvar-1))
    sleep 0.5s
done
