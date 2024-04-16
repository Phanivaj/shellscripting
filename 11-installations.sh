#!/bin/bash

username=$(id -u)
if [ $username -ne 0 ]
then
echo "please use root user acces for the installation"
exit 1 
else
echo "you are a root user"
fi

dnf install mysql -y

if [ $? -ne 0 ] 
then
echo "MySQL installation -- failed"
exit 1
else 
echo "MySQL installation -- success"

fi

dnf install git -y

if [ $? -ne 0 ] 
then
echo "git installation -- failed"
exit 1
else 
echo "git installation -- success"

fi
#echo "is script still proceeding"

