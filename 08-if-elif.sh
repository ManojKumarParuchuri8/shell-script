#!/bin/bash 
a=10 
b=20 
if [$a==$b]
then 
    echo "$a is equal to $b"
elif [$a -gt $b]
then 
    echo "$a is greater than $b"
elif [$a -lt $b]
then 
    echo "$a is lesser than $b"
else 
    echo "Hi manoj please enter correct inputs"
fi 