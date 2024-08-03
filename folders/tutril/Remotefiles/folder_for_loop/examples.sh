#!/bin/bash

fruits=("apple" "mango" "pineapple" "banana" "Orange" "papaya" "watermelon")
len=${#fruits[*]}

for (( i=0; i<${len}; i++ ));
do
echo "${fruits[$i]}"
done
