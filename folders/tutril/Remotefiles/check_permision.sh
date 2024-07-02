#!/bin/bash

for each in check_permision.sh for_loop.sh 
do

if [[ -x $each ]] 
then
  echo "$each is having execute permision" 
else
  echo "$each is not having execution permisions"
fi
done
