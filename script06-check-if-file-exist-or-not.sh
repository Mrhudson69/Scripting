#!/bin/bash

# ~ short hand for home directory

if [ -f ~/Scripting/script7.sh ]
then
	echo "File exists"
else
	echo "File does not exist"
    echo "Creating file"
    touch ~/Scripting/script7.sh & # Run the command in the background
    pid=$! # Get the process ID of the background command
    for i in $(seq 1 5)
    do
        echo -n "."
        sleep 1
    done
    wait $pid # Wait for the background command to finish
    if [ -f ~/Scripting/script6.sh ]
    then
        echo "File is created successfully"
    else
        echo "Failed to create file"
    fi
fi