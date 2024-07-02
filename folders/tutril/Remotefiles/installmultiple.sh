#!/bin/bash

if [[ "$EUID" -ne 0 ]]
then
 exec sudo "$0" "$@"
fi

sudo yum install zip unzip tree -y
