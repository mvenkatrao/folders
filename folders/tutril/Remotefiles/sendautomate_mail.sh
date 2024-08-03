#!/bin/bash
TO=harshavenkat55@gmail.com
TOTAL_T="400"
FREEE_RAM=$(free -mt | grep -E "Total" | awk {'print $4'})

if [[ $FREE_RAM -lt $TOTAL_T ]]
then
echo -e "Server is running with low ram\nAvaiable Ram is : " $FREEE_RAM
fi

