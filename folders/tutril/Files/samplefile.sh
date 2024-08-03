#shell script to find average of n numbers
  
echo "Enter Size(N)"
read N

i=1
sum=0

echo "Enter Numbers"
while [ $i -le $N ]
do
  read num               #get number
  sum=$((sum + num))     #sum+=num
  i=$((i + 1))
done

avg=$(echo $sum / $N | bc -l)
####################################################################### 
var1=kiran
var2=harsha
echo "Please enter name"
read name
if [ $var1 ]; then
echo "hero is kiran"

else

 echo "harsha is"
fi
#################################################################

case_shell

#!/bin/bash
echo "Which color do you like best?"

echo "1 - Blue"
echo "2 - Red"
echo "3 - Yellow"
echo "4 - Green"
echo "5 - Orange"
read colour;
case $colour in
1) echo "Blue is a primary color.";;
2) echo "Red is primary color.";;
3) echo "Yellow is a primary color.";;
4) echo "Green is a secondary color.";;
5) echo "Orange is a secondary color.";;
*) echo "This color is not avaiable. Please choose a difffrent one.";;
esac

###########################################################################################

case command script


#!/bin/bash

#var1=1

echo "Enter a number"

read Number

case $Number in

1)
 echo "$Number  number ";;
2)
  echo "$Number number ";;
3)
  echo "$Number number ";;

*)

  echo "Not either 1 or 2 and 3";;

esac


##or##

#bin/bash
var1=1

case $var1 in

1)

echo "Number 1";;
2)
echo "Number 2";;
3)
echo "Number 3";;

*)

echo "Not in 1-2-3 "

esac
####################################################################################################################################
#!/bin/bash

echo "Enter a character:\c"

read var
case $var in

[a-z])

echo "You have entered a lower case alphabet.";;
[A-Z])

echo "You have entered a uppercase.";;

[0-9])
echo "You havve entered a numeric number";;

?)
echo "you have entered a special character";;

[a-z])
echo "you have entered lower and upper";;

[a-z]* | [A-Z]*)

echo "You have entered both";;

*)
echo "you have entered a more than one characters";;

esac

########################################################################################################################################################################
https://www.youtube.com/watch?v=pyhzv8XZnww&list=PL7B7FA4E693D8E790&index=38

[root@ip-172-31-45-211 shellscript]# cat case1.sh
#!/bin/bash

echo "Enter value for a : "

read a
echo "Enter value for b : "
read b

echo Enter add - Addition, dif subtraction
read choice

case $choice in

add) echo Addition of $a and $b is $( expr $a + $b );;
dif) echo diffrence between $a and b is $( expr $a - $b );;
*) echo Enter either 1 or 2 ;;

esac
[root@ip-172-31-45-211 shellscript]#


#################################################################################################################

[root@ip-172-31-45-211 shellscript]# cat case2.sh
#!/bin/bash

echo "Enter value for a :"
read a
echo "Enter value for b :"
read b
echo enter $(expr $a + 1) for addition and $(expr $b + 1) for diffrence
read choice

case $choice in

$(expr $a + 1)) echo addition of $a and $b is $(expr $a + $b);;
$(expr $b + 1)) echo diffrence between $a and $b is $(expr $a - $b);;

*) echo enter either 1 or 2

esac
[root@ip-172-31-45-211 shellscript]#
####################################################################################################
[root@ip-172-31-45-211 shellscript]# cat  matchecases.sh
#!/bin/bash

echo "Enter a word:\c"
read word
case $word in

[aeiou]* | [AEIOU]*)
echo "you have entered in between aeiou";;

#echo "you have entered $word"


???)

echo "you have entered three digits";;

*)

echo "You have entered something else called $word ";;

esac

#echo you have entered is $word
[root@ip-172-31-45-211 shellscript]#
##########################################################################################################




we should use either () or `` for expr

###################################################################################################################

#!/bin/bash

case $1 in

"directory")
 find /etc -maxdepth 1 -type d ;;
"link")
 find /etc -maxdepth 1 -type l ;;
"file")
 find /etc -maxdepth 1 -type f ;;
*)
echo "usage : $0 file | file | directory | link";;

esac

#################################################################

[root@ip-172-31-45-211 shellscript]# cat case_df_hk.sh
#!/bin/bash
#SPACE=$(df -h | awk '{ print $5 }' | grep -v use | sort -n | tail -1 | cut -d %-f1 )
case $1 in
[1-6]* | ?)
  MESSAGE="All is quiet"
  ;;
[7-8]?)
  MESSAGE="start thinking about cleaning out some stuff. There's a partition $SPACE % full."
  ;;
9[0-8])

  MESSAGE="better hurrry with that new disk $SPACE"
  ;;

99)
  MESSAGE=" i'm drowning here ! there's a partition at $SPACE % !"
  ;;

*)
  MESSAGGE="I seem to be running with an nonexistent amount of disk $SPACE .."
  ;;
esac

[root@ip-172-31-45-211 shellscript]#

