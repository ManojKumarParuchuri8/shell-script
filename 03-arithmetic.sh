#!/bin/bash 
a=$1 
b=$2 
add=$(($a+$b))
multiply=$(($a*$b))
subtraction=$(($a-$b))
division=$(($a/$b))
echo $add
echo $multiply 
echo $subtraction 
echo $division 
echo "All arguments passed $@"
echo "Total number of arguments $#"
echo "Script name is $0"