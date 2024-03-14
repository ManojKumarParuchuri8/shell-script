#!/bin/bash 

NAME=""
WISHES=""

USAGE()
{
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo " -n, Specify the name (mandatory)"
    echo " -w, Specify the wishes. ex, Good Morning"
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

if [ -z "$NAME" ] || [ -z "$WISHES" ]   # -z means empty
then 
    echo "ERROR:: Both -n and -w are mandatory options."
    USAGE 
    exit 1 
fi 

echo "Hello $NAME $WISHES I have been learning shell script."

