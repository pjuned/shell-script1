#!/bin/bash

ID=$(id -u)
echo "Script name=$0"
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){

if [ $1 -ne 0 ]
then 
    echo "$2  is failed"
else
    echo "$2  is success"
fi

}

if [ $ID -ne 0 ]
then 
    echo "you are not root user"
    exit 1
else
    echo "you are a root user"

fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "installing mysql"

yum install git -y &>> $LOGFILE

VALIDATE $? "installing git"