#!/bin/bash

# without parentheses
if [ $1 -eq 0 ]
then
  echo "The first argument is zero."
else
   echo "The first argument is not zero."
fi

# with parentheses
if [ $(echo $1) -eq 0 ]
then
   echo "The first argument is Zero."
else
    echo "The first argument is not zero."
fi
