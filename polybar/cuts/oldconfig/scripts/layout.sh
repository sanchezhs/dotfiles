#!/usr/bin/bash

# Current workspace
# bsp-layout get $(wmctrl -d | grep -w '*' | awk 'NF>1{print $NF}')

#LAYOUT=`bsp-layout get $(wmctrl -d | grep -w '*' | awk 'NF>1{print $NF}')`
get_layout () { LAYOUT=$(bsp-layout get $(wmctrl -d | grep -w '*' | awk 'NF>1{print $NF}')); }

while true; do
    get_layout
    echo $LAYOUT
done
