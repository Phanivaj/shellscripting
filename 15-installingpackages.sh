#!/bin/bash

username=$(id -u)
userid=$(whoami)
date=$(date +%F-%H-%M-%S)
logfilepath=/tmp/$(echo $0 | cut -d. -f1)-$date.log
#touch $logfilepath
echo $logfilepath
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
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
    echo -e "$Y $2 ....$R failed $N"
    exit 1
    else
    echo -e "$Y $2 .....$G success $N"
   fi
}
for i in $@
do
  dnf list installed $i &>>$logfilepath
  if [ &? -eq 0 ]
  then
  ech0 -e " $Y Installation of $i is $G skipped $N"
  else
  dnf install $i -y &>>$logfilepath
  validate $? "Installation of $i"
  fi
done

