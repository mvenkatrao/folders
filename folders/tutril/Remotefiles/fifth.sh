#!/bin/bash

if [[ $(id -u) -ne 0 ]]
then
  echo "Please run fro mroot user or with sudo privilage"
  exit 1
fi

for each in  $@
do
  if which $each &> /dev/null
  then
     echo "Removing $each ......"
  sudo yum remove $each -y &> /dev/null
  if [[ $? -eq 0 ]] 
  then
     echo "Successfully Removed $each"
 else
     echo "Unable to Remove $each"
  fi
  fi
done  
