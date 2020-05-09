#!/bin/bash

USER_PS=`ps -U ${USER} -u ${USER} --no-headers | wc -l`
ROOT_PS=`ps -U root -u root --no-headers | wc -l`

cat << EOF
Number of processes for user:
<$USER>
$USER_PS
Number of processes for root user:
$ROOT_PS
EOF