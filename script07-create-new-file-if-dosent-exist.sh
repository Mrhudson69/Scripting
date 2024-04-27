#!/bin/bash

# ~ short hand for home directory

echo "Which file do you want to check if it exists?"
read filename

if [ -f ~/Scripting/"$filename".sh ]
then
	echo "File exists"
else
	echo "File does not exist"
    echo "Creating file"
    touch ~/Scripting/"$filename".sh & # Run the command in the background
    pid=$! # Get the process ID of the background command
    for i in $(seq 1 5)
    do
        echo -n "."
        sleep 1
    done
    wait $pid # Wait for the background command to finish
    if [ -f ~/Scripting/"$filename".sh ]
    then
        echo "File is created successfully"
        chmod +x ~/Scripting/"$filename".sh
    else
        echo "Failed to create file"
    fi
fi