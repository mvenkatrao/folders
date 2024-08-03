#!/bin/bash

user_id=$(id -u)

if [[ $user_id -nt 0 ]]
then 
  echo "you are not the root user to run this shell script"
fi
<<comments
if ! systemctl status &> /dev/null; then
    echo "You do not have permission to run the 'systemctl' command."
    echo "Please run this script using 'sudo'."
    exit 1

fi
comments

read -p "Please enter the action you want to perform: " user_action

case $user_action in 
    start)
        echo "Starting httpd"
        systemctl status &> /dev/null || sudo systemctl start httpd
        ;;
    stop)
        echo "Stopping httpd"
        systemctl status httpd &> /dev/null || sudo systemctl stop httpd
        ;;
    restart)
        echo "Restarting httpd"
        sudo systemctl restart httpd
        ;;
    status)
        echo "Checking the status of httpd"
        systemctl status httpd
        ;;
    *)
        echo "Invalid option"
        echo "Valid options are start | stop | restart | status"
        ;;
esac

