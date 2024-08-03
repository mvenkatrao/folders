#!/bin/bash
SRE="/var/www/html"
DEST="/backups"
EDTB=$(date '+%b_%d_%Y_%H_%M_%S')
[[ -e %DEST ]] || mkdir $DEST
tar -cvzpf $DEST/my_website.com_bkp_${EDTB}.tar.gz $SRE
