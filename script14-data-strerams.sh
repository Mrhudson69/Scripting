#!/bin/bash

# release_file=/etc/os-release
# log_file=/var/log/update_system.log
# error_file=/var/log/update_system_error.log

# # Check if the system is arch or ubuntu

# if grep -q "Arch" $release_file
# then 
#     # Update the system based on arch linux
#     sudo pacman -Syu 1>>$log_file 2>>$error_file
#     if [ $? -ne 0 ]
#     then 
#         echo "An error has occured please check $error_file"
#     fi 
# fi

# if grep -q "Ubuntu" $release_file
# then 
#     # Update the system based on ubuntu
#     sudo apt update  1>>$log_file 2>>$error_file
#     if [ $? -ne 0 ]
#     then 
#         echo "An error has occured in sudo apt update So please check $error_file"
#     fi 
#     sudo apt upgrade -y 1>>$log_file 2>>$error_file
#     if [ $? -ne 0 ]
#     then 
#         echo "An error has occured in sudo apt upgrade so please check $error_file"
#     fi 
# fi

# -------- Standard Input -------------

echo "What is your name ?"
read name

echo "Hello $name"
