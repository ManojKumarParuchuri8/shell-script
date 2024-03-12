#!/bin/bash 

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1 
message=""

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


while IFS= read line
do 
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $DISK_THRESHOLD ]
    then 
        message+="High Disk Usage on $partition: $usage\n"
    fi 

done <<< $DISK_USAGE 

echo -e "Message: $message" 
echo -e "$message" | mail -s "High Disk Usage" manojkumar.paruchuri532@gmail.com