#!/bin/bash

DATE=`date +"%d-%m-%Y"`
TIME=`date +"%H:%M:%S"`
USERS=`who | awk '{print $1"\t"$2}'`
UPTIME=`uptime -p | cut -d " " -f2-`

cat << EOF
$DATE $TIME
Registered users:
$USERS
UPTIME: $UPTIME
EOF