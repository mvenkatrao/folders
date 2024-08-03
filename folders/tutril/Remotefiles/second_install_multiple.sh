#!/bin/bash
if [[ $(id -u) -ne 0 ]]
then
    echo "Please run as root user or with sudo privilege"
    exit 1
fi

if which vim &> /dev/null
then
    echo "Vim is already installed"
else
    echo "Installing Vim package ..."
    sudo yum install vim -y
fi

