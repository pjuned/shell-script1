#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
 echo "you are not root user"
 exit 1
else
    echo " you are root user"

fi

for package in $@
do 
    yum list installed $package
    if [$? -ne 0 ]
    then
        yum install $package -y
    else
        echo "$package is already installed"
    fi 

