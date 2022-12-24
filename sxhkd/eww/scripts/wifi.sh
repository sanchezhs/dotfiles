#!/usr/bin/sh

nmcli -f IN-USE,SIGNAL,SSID device wifi | awk '/^\*/{if (NR!=1) {print $2}}'
#echo $STRENGH
#if [ -z $STRENGH ]; then
#echo $STRENGH
#else
#echo 'offline'
#fi

