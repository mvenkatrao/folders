#!/bin/bash

if id -nG "$(id -un)" | grep -qw "sudo" ; then
    echo "You are in the sudo group"
else

   echo "You are not in the sudo group"
fi
