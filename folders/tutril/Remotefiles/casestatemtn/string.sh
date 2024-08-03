#!/bin/bash

echo "Please enter a character"
read char

if [[ $char =~ [a-zA-Z] ]]; then
  echo "The string contains the letter letters"

else

echo "The string does not container the letter a"
fi

