#!/bin/bash

HIDDEN_COUNT=`find ~ -type f -iname ".*" | wc -l`
NORMAL_COUNT=`find ~ -type f -iname "[!.]*" | wc -l`

cat << EOF
User's homedir
<$USER>
contains ordinary files:
$NORMAL_COUNT
hidden files:
$HIDDEN_COUNT
EOF