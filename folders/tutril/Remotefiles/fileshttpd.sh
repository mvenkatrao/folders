#!/bin/bash

user_id=$(id -u)

if [[ $user_id -ne 0 ]]
then
  echo "yu are not the root user"
fi

if [[ $# -ne 1 ]]
then
  echo "Please run this shell script as follows :"
  echo "Usage : "
  echo "$0 start | stop | restart | status "
  exit
fi
#read -p "Please enter the action you want to perform: " user_action
user_action=$1

case $user_action in
    start)
        echo "Starting httpd"
        systemctl status httpd &> /dev/null || sudo systemctl start httpd
        ;;
    stop)
        echo "Stopping httpd"
        systemctl status httpd &> /dev/null && sudo systemctl stop httpd
        ;;
    restart)
        echo "Restarting httpd"
        sudo systemctl restart httpd
        ;;
    status)
        echo "Checking the status of httpd"
        systemctl status httpd
        ;;

esac

