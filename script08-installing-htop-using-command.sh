#!/bin/bash

command=/usr/bin/htop

if [ -f $command ]

then
    echo "$command command is available, let's run it..."

else

    echo "$command not found so installing it..."

    sudo apt update && sudo apt-get install htop -y

fi

$command