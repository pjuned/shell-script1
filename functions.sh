#!/bin/bash

ID=$(id -u)

VALIDATE(){

if [ $? -ne 0 ]
then 
    echo "installing  is success"
else
    echo "installing  is failed"
fi

}

if [$ID -ne 0]
then 
    echo "you are not root user"
    exit 1
else
    echo "you are a root user"

fi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE