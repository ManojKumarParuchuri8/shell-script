#!/bin/bash 

Calculator()
{
    add=$(($1+$2))
    subtraction=$(($1-$2))
    multiplication=$(($1*$2))
    division=$(($1*$2))
    echo "Addition for $1 and $2 is $add"
    echo "Subtraction for $1 and $2 is $subtraction"
    echo "Multiplication for $1 and $2 is $multiplication"
    echo "Division for $1 and $2 is $division"
}

Calculator $1 $2 