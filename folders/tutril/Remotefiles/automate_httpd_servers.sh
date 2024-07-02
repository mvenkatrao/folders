#!/bin/bash
#Author: Harsha
#Automating httpd action like : start, stop,restart and status
user_id=$( id -u )
[[ $user_id -eq 0 ]] && echo "you are root user. so you can run this shell script" || "echo you are not the root uesr to run this shell script"
