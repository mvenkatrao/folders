#!/bin/bash

if [[ $(id -u) -ne 0 ]]
then
 echo "Please run from root user or with sudo privilage"
exit 1
fi

if which vim &> /dev/null
then
 echo "Already vim is installed"
else
  echo "Installing vim....."
  yum install vim -y &> /dev/null
 if [[ $? -eq 0 ]]
 then 
  echo "Successfully installed  pkg"
  else
   echo "Unable to install pkg"
fi

fi
