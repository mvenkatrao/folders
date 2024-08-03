#!/bin/bash

##Author : Harsha
SRC="/var/www/html"
EDT=$(date '+%b_%d_%Y_%H_%M_%S')
DEST="/backups"
[[ -e $DEST ]] || MKDIR $DEST
tar -cvzpf $DEST/my_website.com_${EDT}bkp.tar.gz $SRC

