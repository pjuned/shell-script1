#!/bin/bash

ID=$(id -u)

VALIDATE(){

if [ $1 -ne 0 ]
then 
    echo "$2  is success"
else
    echo "$2  is failed"
fi

}

if [ $ID -ne 0 ]
then 
    echo "you are not root user"
    exit 1
else
    echo "you are a root user"

fi

yum install mysql -y

VALIDATE $? "installing mysql"

yum install git -y

VALIDATE $? "installing git"