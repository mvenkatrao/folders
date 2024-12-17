#!/bin/bash

if [[ $(id -u) -ne 0 ]]
then
  echo "Please run fro mroot user or with sudo privilage"
  exit 1
fi

for each in vim $@
do
  if which $each &> /dev/null
  then
    echo "$each is installed"
  else
     echo "Installing $each ......"
  sudo yum install $each -y &> /dev/null
  if [[ $? -eq 0 ]] 
  then
     echo "Successfully installed $each"
 else
     echo "Unable to install $each"
  fi
  fi
done  
