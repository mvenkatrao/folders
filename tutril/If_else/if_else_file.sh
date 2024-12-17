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

====== Below is the case statement for same as above ======     

#!/bin/bash

user_id=$(id -u)

if [[ $user_id -nt 0 ]]
then
  echo "yu are not the root user"
fi

if [[ $# -ne 1 ]]
then
  echo "Please run this shell script as follows :"
  echo "Usage : "
  echo "$0 start | stop | restart | status "
  fi
read -p "Please enter the action you want to perform: " user_action
user_cmd=$1

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
    *)
        echo "Invalid option"
        echo "Valid options are start | stop | restart | status"
        ;;
esac
