#!/bin/bash

<<comment
read -p "Please enter your name : " "name_here"
name_variable=${name_here^^}
echo "your name is in upper case : $name_variable"
comment


read -p "Please enter your name :"
echo "$REPLY"
