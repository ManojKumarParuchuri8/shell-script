#!/bin/bash 

SOURCE_DIR="/tmp/shellscript-logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ]
then 
    echo -e "$R Source Directory $SOURCE_DIR does not exist $N"
else 
    echo -e "$G Source Directory $SOURCE_DIR Exist $N"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +13 -name '*.log')

while IFS= read -r line
do 
    echo "Deleting File: $line" 
    rm -rf $line 
    if [ $? -ne 0 ]
    then 
        echo "File not deleted"
    else 
        echo "File Deleted"
    fi 
done <<< $FILES_TO_DELETE 