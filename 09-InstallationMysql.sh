#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run the script with root access"
    exit 1
else
    echo "You are Root user"
fi  

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Mysql installation is failure"
    exit 1
else
    echo "Mysql Installation Success"
fi    

yum install git -y

if [ $? -ne 0 ]
then
    echo "Git installation is failure"
    exit 1
else
    echo "Git Installation Success"
fi    