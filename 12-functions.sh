#!/bin/bash

username=$(id -u)
R=\e[32m
G=\e[33m

if [ $username -ne 0 ]
then
echo "please use root user acces for the installation"
exit 1 
else
echo "you are a root user"
fi

validate(){
    echo -e $R $2 failed
    echo -e $G $2 successful
}
dnf install mysql -y

validate $? "Installation of myqsl"

dnf install git -y

validate $? "Installation of GIt"
#echo "is script still proceeding"

