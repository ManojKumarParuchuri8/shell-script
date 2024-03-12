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

FILES_TO_DELETE=$(find /tmp/shellscript-logs -type f -mtime +13 -name '*.log')

while IFS= read -r line
do 
    echo $line 
done <<< $FILES_TO_DELETE 