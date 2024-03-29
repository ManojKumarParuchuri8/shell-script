#!/bin/bash 

R="\e[31m" 
G="\e[32m"
Y="\e[33m"
N="\e[0m" 

VALIDATE()
{
    if [ $1 -ne 0 ]
    then 
        echo -e "ERROR:: $2 is failed"
        exit 1 
    else 
        echo "$2 is  SUCCESS"
    fi 
}
ID=$(id -u) 
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE 
 if [ $ID -ne 0 ] 
 then 
    echo -e " ERROR:: Please run this script with root access"
    exit 1 #you can give other than 0
else 
    echo "you are root user"
fi 

yum install mysql -y &>> $LOGFILE 
VALIDATE $? "Installing MYSQL"

yum install git -y &>> $LOGFILE 
VALIDATE  $? "Installing git"