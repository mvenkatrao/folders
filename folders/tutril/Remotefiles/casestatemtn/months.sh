#!/bin/bash

month=$(date +%b)

case $month in 

Jan)
  echo "january" ;;
Feb)
  echo "#####Feb#####" ;;
*)
  echo "Month not matched" ;;
esac
