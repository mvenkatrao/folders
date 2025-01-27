#Author: Narendra 
#!/usr/bin/bash
#Author: Narendra 
#Automating httpd actions like: start,stop,restart and status

user_id=$(id -u)

if [[ $user_id -ne 0 ]]
then
   echo "you are not the root user to run this shell script"
fi


if [[ $# -ne 1 ]]
then
   echo "Please run this shell script as follows:"
   echo "Usage: "
   echo "$0  start|stop|restart|status"
   exit
fi

#read -p "Enter your action for httpd: " usr_action
usr_action=$1

case $usr_action in

    start)  
         echo "Starting httpd....."
         systemctl status httpd &> /dev/null || systemctl start httpd ;;
    stop)
         echo "stoping httpd...."
         systemctl status httpd &> /dev/null && systemctl stop httpd ;;
    restart) 
         echo "restarting httpd ......."
         systemctl restart httpd ;;
    status)
         echo "finding the status......."
         systemctl status httpd ;;
    *)
         echo "your action is invalid"
         echo "valid actions are start|stop|restart|status"       
esac

