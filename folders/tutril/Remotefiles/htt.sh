#!/bin/bash

# Check if user is root
user_id=$(id -u)
if [[ $user_id -ne 0 ]]; then
  echo "You are not the root user to run this shell script"
  exit 1
fi

# Check if user has sudo access
if sudo -n true > /dev/null 2>&1; then
  sudo_prefix="sudo "
fi

# Get user action for httpd
read -p "Please enter your action on httpd: " user_action

if [[ -n $user_action ]]; then
  # Get user command for httpd
  read -p "You require privileged access to start httpd: " user_command

  # Start httpd
  echo "Executing the $user_action for httpd"
  $sudo_prefix systemctl $user_action httpd
  $sudo_prefix $user_command systemctl $user_action httpd
else
  echo "No action specified for httpd"
fi

