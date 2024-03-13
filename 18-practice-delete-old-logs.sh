#!/bin/bash 

SOURCE_DIR="/tmp/shellscript-logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ]
then 
    echo -e "$R Directory $SOURCE_DIR does not exist $N"
fi 

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +10 -name "*.log")

while IFS= read -r line 
do 
    echo $line 
    rm -rf $line 
    if [ $? -ne 0 ]
    then 
        echo "file is deleted"
    else 
        echo "file not deleted"
    fi 
done <<< $FILES_TO_DELETE