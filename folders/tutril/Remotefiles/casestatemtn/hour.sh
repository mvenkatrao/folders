#!/bin/bash

hour=$(date +%H)
case $hour in
0[0-9]1[0-1])
echo "Good morning!"
;;
*)
echo "Good afternoon!"
;;
esac
