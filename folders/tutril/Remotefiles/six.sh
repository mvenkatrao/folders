#!/bin/bash
echo "Below output is of \$*"
for each in "$*"
do
  echo $each
done
echo you have provided $#* arguments 
echo "Below out put for \$@"
for each in "$@"
do
echo $each 
done

echo "you have provided $# arguments"
