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

 
echo "is script still proceeding"

