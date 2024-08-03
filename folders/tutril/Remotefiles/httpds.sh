#!/bin/bash
#Author : Harsha

user_id=$(id -u)
if [[ $user_id -ne 0 ]] ; then
 echo "You are not the root user to run this shell script"
fi

read -p "Please enter you action on httpd : " user_action

echo "Executing the $user_action for httpd"

