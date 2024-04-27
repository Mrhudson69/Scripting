#!/bin/bash

 package=htop

 sudo apt install $package -y >> sucess_installation.log

 if [ $? -eq 0 ]
then 
    echo "Installation of $package is sucessfull"
    which $package
    else
    echo "Installation of $package is failed" >> package_failure.log
fi