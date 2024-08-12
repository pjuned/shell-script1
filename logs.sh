#!/bin/bash

ID=$(id -u)
echo "Script name=$0"
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){

if [ $1 -ne 0 ]
then 
    echo -e "$2  is $R failed"
else
    echo -e "$2 is $G success $N"
fi

}

if [ $ID -ne 0 ]
then 
    echo -e " $R you are not root user"
    exit 1
else
    echo -e " $G you are a root user"

fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "installing mysql"

yum install git -y &>> $LOGFILE

VALIDATE $? "installing git"