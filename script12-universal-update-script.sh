#!/bin/bash

# if [ -d /etc/pacman.d ]
# then 
#     # Update the system based on arch linux
#     sudo pacman -Syu
# fi

# if [ -d /etc/apt ]
# then 
#     # Update the system based on ubuntu
#     sudo apt update
#     sudo apt upgrade -y
# fi

# ----- Example 2 -------

release_file=/etc/os-release

if grep -q "Arch" $release_file
then 
    # Update the system based on arch linux
    sudo pacman -Syu
fi

if grep -q "Ubuntu" $release_file
then 
    # Update the system based on ubuntu
    sudo apt update
    sudo apt upgrade -y
fi

