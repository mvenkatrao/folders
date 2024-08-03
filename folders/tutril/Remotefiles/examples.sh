#!/bin/bash

# Array of fruits
fruits=("apple" "banana" "cherry" "date" "elderberry")

# Read the input name
read -p "Enter the name of the fruit to display up to: " name

# Check if the input name is empty
if [ -z "$name" ]; then
   echo "No input name provided. Exiting..."
   exit 1
fi

# Iterate through the array
for fruit in ${fruits[@]}
do
   # Display the current fruit
   echo $fruit

   # Check if the current fruit matches the input name
   if [ $fruit = $name ]; then
      # If it does, break out of the loop
      break
   fi
done

