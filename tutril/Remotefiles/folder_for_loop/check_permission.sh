#!/bin/bash

for each in httpd_info.sh httpd_ver_port.sh check_ex_per.sh

do 
 if [[ -x $each ]]
 then 
   echo "$each is having execution permission"
 else
   echo "$each is not having execution permision"
fi
done
