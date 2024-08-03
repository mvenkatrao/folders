#!/bin/bash

if [[ $(id -u) -ne 0 ]]
then
 echo "Please run this $0 as a root user"
exit 1

fi
if which vim &> /dev/null

then
  echo "vim is already installed"
else
  echo "installing vim package.."
sudo yum install vim -y
fi
