#!/bin/bash

case $# in 

0) 
  echo "No arguments" ;;
1)
  echo "One argument" ;;
*)
  echo "$# arguments " ;; 

esac
