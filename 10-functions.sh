#!/bin/bash 

VALIDATE()
{
    if [ $1 -ne 0 ]
    then 
        echo "ERROR:: Installing $2 is failed"
        exit 1 
    else 
        echo "Installing $2 is SUCCESS"
    fi 
}
ID=$(id -u) 
 if [ $ID -ne 0 ] 
 then 
    echo "ERROR:: Please run this script with root access"
    exit 1 #you can give other than 0
else 
    echo "you are root user"
fi 

yum install mysql -y 
VALIDATE() $? "MYSQL"

yum install git -y 
VALIDATE()  $? "git"