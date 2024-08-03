#!/bin/bash

read -p "Enter your first number : " a
read -p "Enter your second number : " b
((sum=a+b))
echo "The addition of $a and $b is : $sum"
