#!/bin/bash

if [[ $# -ne 1 ]]
then
  echo "uage : $0 <any path>"
exit 1
fi

given_path=$1
for each in $(ls $given_path)
do
 if [[ -x $each ]]
then

 echo "$each is having execution permissions"
else
 echo "$each is not having execution permissions"
fi
done
