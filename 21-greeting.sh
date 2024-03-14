#!/bin/bash 

NAME=""
WISHES="Good Morning"

USAGE()
{
    echo "USAGE:: $($0) -n <name> -w <wishes>"
    echo "Options::"
    echo " -n, Specify the name (mandatory)"
    echo " -w, Specify the wishes.(Optional) Default is Good Morning"
    echo " -h, Display Help and exit"
}

while getopts ":n:w:h:"  opt; do  #what we enter it comes to opt
    case $opt in 
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        \?) echo "Invalid Option -$OPTARG" >&2; USAGE; exit 1;;  #invalid 
        :) USAGE; exit;;
        h) USAGE; exit;;
    esac 
done 

# if [ -z "$NAME" ] || [ -z "$WISHES" ]   # -z means empty
if [ -z "$NAME" ] # now wishes is optional
then 
    # echo "ERROR:: Both -n and -w are mandatory options."
    echo "ERROR:: -n is mandatory option."
    USAGE 
    exit 1 
fi 

echo "Hello $NAME $WISHES I have been learning shell script."

