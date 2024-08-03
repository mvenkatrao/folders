#!/bin/bash
<<comment
if systemctl is-active --quiet httpd.service; then

echo "it's running"

else

systemctl start httpd

echo "started"
fi
comment

which httpd &>/dev/null
httpd_status=$?

if [[ $httpd_status -eq 0 ]]; then
   echo "httpd is installed on this host"

else
  sudo yum install httpd -y 
fi
