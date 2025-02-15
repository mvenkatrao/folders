#!/bin/bash

user_id=$(id -u)
if [[ $user_id -eq 0 ]]
then
echo "you are no the root user to run this shell script"
fi

read -p "Enter your action for httpd: " user_action

if [[ $user_action == "start " ]]
then
echo "starting httpd"
systemctl status &> /dev/null || systemctl start httpd

elif [[ $user_action == "stop" ]]
then
echo "stopping httpd"
systemctl status httpd &> /dev/null || systemctl stop httpd

elif [[ $user_action == "restart" ]]

then
echo "restarting httpd"
  systemctl restart httpd

elif [[ $user_action == "status" ]]

then

echo "finding the status"

systemctl status httpd
else 
echo "Invalid option choosen"
echo "Valid options are start | stop | status | restart"

fi


