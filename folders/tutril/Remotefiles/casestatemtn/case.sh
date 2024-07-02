#!/bin/bash

read -p "Enter one number : " a
read -p "Enter second number : " b
echo -e "Enter your options (1.Addition, 2.Sub, 3.Mul, 4.Div) : \n"
read opt

case $opt in
  1)
    echo "You selected addition"
    echo "The addition of $a and $b is : $((a+b))"
    ;;
  2)
    echo "You selected sub"
    echo "The sub of $a and $b is :  $((a-b))"
    ;;
  3)
    echo "You selected mul"
    echo "The mul of $a and $b is : $((a*b))"
    ;;
  4)
    echo "You selected div"
    echo "The div of $a with $b is : $((a/b))"
    ;;
  *)
    echo "You selected invalid option"
    ;;
esac

