#!/bin/bash

echo "all the parameters are::" $@
echo "Username is:" $uid
echo "process id is:" $$
echo "Number of input parameters::" $#
echo "all the inputs in one line::" $*
echo "Name of the script::"$0
echo "first parameter::" $1
echo "username::" $UNAME
sleep 60
echo "last background PID::"$!
echo "Current procees id::" $$
ech0 "last command executed properly or not::" $?