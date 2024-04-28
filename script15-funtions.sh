#!/bin/bash

release_file=/etc/os-release
log_file=/var/log/update_system.log
error_file=/var/log/update_system_error.log

# Added Function to reduce repeated steps --> If we have to use same repeated steps so we need to create a function and put that code repeated code inside that function and call that function in the main script

# Function to check the exit status of the command

check_exit_status() {
     if [ $? -ne 0 ]
    then 
        echo "An error has occured please check $error_file"
    fi 
}

# Check if the system is arch or ubuntu

if grep -q "Arch" $release_file
then 
    # Update the system based on arch linux
    sudo pacman -Syu 1>>$log_file 2>>$error_file
    check_exit_status
fi

if grep -q "Ubuntu" $release_file
then 
    # Update the system based on ubuntu
    sudo apt update  1>>$log_file 2>>$error_file
    check_exit_status
    sudo apt upgrade -y 1>>$log_file 2>>$error_file
    check_exit_status
fi