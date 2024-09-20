#!/bin/bash

ID=$(id -u)

VALIDATE(){
 if [ $? -ne 0 ]
then
    echo " installation is failure"
    exit 1
else
    echo " Installation Success"
fi    
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run the script with root access"
    exit 1
else
    echo "You are Root user"
fi  

yum install mysql -y

VALIDATE $? "Installing Mysql"

yum install git -y

VALIDATE $? "Installing git"

