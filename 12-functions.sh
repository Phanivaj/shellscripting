#!/bin/bash

username=$(id -u)
userid=$(whoami)
date=$(date +%F-%H-%M-%S)
logfilepath=/tmp/$(echo $0 | cut -d. -f1).log
mkdir $logfilepath
echo $logfilepath
R=\e[32m
G=\e[33m
echo $userid Executing $0
echo "Execution started at $date"
if [ $username -ne 0 ]
then
echo "please use root user acces for the installation"
exit 1 
else
echo "you are a root user"
fi

validate(){
    if [ $1 -ne 0 ]
    then
    echo $2 ....failed
    exit 1
    else
    echo $2 .....success
   fi
}
dnf install mysql -y &>>$logfilepath

validate $? "Installation of myqsl"

dnf install git -y &>>$logfilepath

validate $? "Installation of GIt"
#echo "is script still proceeding"

