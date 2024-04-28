#!/bin/bash

dir=/notexist
if [ -d $dir ]
    then
    echo "The Directory $dir exists"
else
    echo "The Directory $dir does not exist"
fi

echo "The exit code for this script is $?"