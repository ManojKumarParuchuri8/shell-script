#!/bin/bash 

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE 
VALIDATE()
{
    if [ $1 -ne 0 ]
    then 
        echo "$2 is Failed"
    else 
        echo "$2 is SUCCESS"
    fi 
}

if [ $ID -ne 0 ] 
 then 
    echo -e " ERROR:: Please run this script with root access"
    exit 1 #you can give other than 0
else 
    echo "you are root user"
fi 

# echo "All arguments Passed: $@" 

for package in $@ 
do
    yum list installed $package &>> $LOGFILE 
    if [ $? -ne 0 ]
    then 
        yum install $package -y &>> $LOGFILE  
        VALIDATE $? "Installion of $package"
    else 
        echo "$package is already installed ... Skipping it"
    fi 
done