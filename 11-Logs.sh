#!/bin/bash

ID=$(id -u)

echo "Script Name: $0"

VALIDATE(){
 if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2 ... FAILED"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi 
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run the script with root access"
    exit 1
else
    echo "You are Root user"
fi  
