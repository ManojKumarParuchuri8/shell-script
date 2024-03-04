#!/bin/bash 
ID=$(id -u) 
echo $ID  
 if [ $ID -ne 0 ] 
 then 
    echo "ERROR:: Please run this script with root access"
    exit 1 #you can give other than 0
else 
    echo "you are root user"
fi 

yum install mysql -y 
if [ $? -ne 0 ]
then 
    echo "Something is happened not installed correctly"
else 
    echo "Mysql installed correctly"
fi 