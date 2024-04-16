#!/bin/bash

username=$(id -u)
if [$username -ne 0]
then
echo "please use root user acces for the installation"
else
echo "you are a root user"
dnf install mysql -y
