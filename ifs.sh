#!/bin/bash
file=/etc/passwd

R="\e[31m"
G="\e[32m"
B="\e[33m"
N="\e[0m"

if [ ! -f $file ]
then
    echo -e "$R Source dir $file does not exist $N"
fi

while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path
do 
    echo "username : $username"
    echo "user_id : $user_id"

done < $file