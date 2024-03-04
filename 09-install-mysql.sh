#!/bin/bash 
user=$(id -u) 
echo $user 
 if $? -eq 0 
 then 
    echo "He is a root user"
else 
    echo "He is not a root user"
fi 