#!bin/bash

source_dir=/tmp/shellscript-logs
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $source_dir ]
then
    echo -e "$R source dir $source_dir does not exist $N"
fi

files_to_delete=$(find $source_dir -type f -mtime +14 -name *.log")

# Assuming $files_to_delete contains a list of file paths to be deleted
while IFS= read -r line
do 
    echo "Deleting file: $line"
    rm -rf "$line"
done <<< "$files_to_delete"
