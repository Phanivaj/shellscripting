#!/bin/bash

username=$(id -u)
date=$(date +%F-%H-%M-%S)
R=\e[32m
G=\e[33m
echo $UNAME Executing $0
echo "Execution started at $date"
if [ $username -ne 0 ]
then
echo "please use root user acces for the installation"
exit 1 
else
echo "you are a root user"
fi

validate(){
    if [$1 -ne 0 ]
    then
    echo $2 ....failed
    exit 1
    else
    echo $2 .....success
   fi
}
dnf install mysql -y

validate $? "Installation of myqsl"

dnf install git -y

validate $? "Installation of GIt"
#echo "is script still proceeding"

