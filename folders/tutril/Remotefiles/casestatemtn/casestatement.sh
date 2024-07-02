#!/bin/bash
read -p "Enter one number : " a
read -p "Enter second number " b
echo -e "Enter your options \n1.Addition, \n2.Sub, \n3.Mul, \n4.Div \n################"
read opt

case $opt in 
  1) 
    echo "You selected addition"
    echo "The adition of $1 and $b is : $((a+b))"
    ;;
  2) echo "You selected sub"
     echo "The sub of $a and $b is :  $((a-b))"
     ;;
  3) echo "You selected mul"
     echo "The mul of $a and $b i : $((a*b))"
     ;;
  4) 
     echo "You selected div"
     echo "The div of $a with $b is : $((a/b))"
     ;;
   *)
    echo "You selected invalid option"
;;
esac
