#!/bin/bash 
ID=$(id -u) 
echo $ID  
 if [ $ID -ne 0 ] 
 then 
    echo "He is not a root user"
else 
    echo "He is  a root user"
fi 