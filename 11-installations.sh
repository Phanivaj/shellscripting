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

if [ $? -eq 0 ] 
then
echo "MySQL installation -- successfully"
exit 1
else 
echo "MySQL installation -- failed"
exit 0  
fi

#echo "is script still proceeding"

