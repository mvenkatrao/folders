cat /etc/shells

ps $$
-x for debug mode


---------------

set -x --> debug started
set +x --> debug ended

set -n --> syntax check

export is the command to export the environment varibles to the new shell as well

to see both system and userdefined variables

set | less

echo ${HELLO=john ali}
unset HELLO
--------------
school=dpsnoida
echo ${school:amity}

:=  to use undefined variables
unset school

echo ${school:=amity}

==============================

quoting
---------
three types of quotes

"" --> 

echo "$HOME"abc --> VARIABLE with string

'' --> disabling the commands and variables 
echo '$ABC' --> this will not refer any variables directly prints the output

"\" --> backslash
[^abc]

[j-mJ-Mz]

'x*\.y*'
------------
x [#:.]y

x [#:\^] y

^[0-9]{3}$ --> this will repeat [09 three times]

^[a-z]{4,6}$

grep -i '(ha) {4,}' --> this will check the unlimited haha matches

^(ha){,2}$ --> to match one or two string

grep-E 'fooa+baar' one or more occurance +

a? --> single occurance

(a|b) --> either a or b

([0-9]+)x([0-9]+)   \1 pix by \2 pix

sed -r 's/([a-zA-Z]+)\s([a-zA-Z]+)/\2,\1/g' filename --> reversing 
([0-9]{1,2}):([0-9{2}]) \2 mins past \1
==============================================================================================
fooaaaabar / fooabar / foobar/ | foo
1. a* ==> zero or more occurances | grep -E
2. .  ==> it represents any latter 
3. .* ==> any latter one or more occurances
4. \s*  ==> space 
5. [fcl]oo ==> that can match anything fcl or oo
6. [fldld]oo ==> same like above
7. [^mh]oo ==> will ignore these will display everything
8. [j-m]oo ==> this is dispaly from j to m
9. [j-mz]oo ==> this will include z also
10. [j-mJ-Mz]oo ==> including lower case and upper case
11. 'x*\.y*' ==> escaping the .
12. [x#:\.]y
13. [#:\^]y
14. [#\\\^]y
15. ".*bar$"
16. ^foo ==> anchor symbol
17. ^foo$ --> only this will match
=============================================
18. ^[0-9]{3}$ --> this will match only three digits not 4 latters
19. '^[a-z]{4,6}$' 
20. '(ha){4,}'
21. '(ha){3,7}'
22. 
23.a+ one or zero occurances of only a when we use along with +
24. loo|wood
==================================================

find and replace
25.  sed -r 's/([0-9]+)x([0-9]+)/\1 pix by \2 pix/g' regex25.txt

26. cat regex26.txt | sed -r 's/([a-zA-Z]+)\s([a-zA-Z]+)/\2,\1/g'
27. $ sed -r 's/([0-9]{1,2}):([0-9]{2})/\2mins past \1/g' regex27.txt
28. $ sed -r 's/[0-9]{3}\.[0-9]{3}\.([0-9]{4})/xxx.xxx.\1/g' regex28.txt
29. sed -r 's/([a-zA-Z]{3})\s([0-9]{1,2})\s[0-9]{2}([0-9]{2})/\2-\1-\3/g' regex29.txt
30. sed -r 's/\(([0-9]{3}\)(\.[0-9]{3}\.[0-9]{4})/\1\2/g'



 
