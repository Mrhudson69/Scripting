#!/bin/bash

command=htop

if command -v $command

then
    echo "$command command is available, let's run it..."

else

    echo "$command not found so installing it..."

    sudo apt update && sudo apt-get install $command -y

fi

$command