#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
 echo "you are not root user"
 exit 1
else
    echo " you are root user"

fi

yum install mysql -y