#!/bin/bash

echo "entet first number::"
read fnumber
echo "enter second number::"
read snumber

if [ $fnumber -gt $snumber ] then
echo "first number is greater than second number"
elif [ $fnumber -lt $snumber ] then
echo "first number is lesser than second number"
else 
echo "Both the numbers are equal"
fi
