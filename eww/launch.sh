#!/usr/bin/bash

EWW="$HOME/eww/target/release/./eww"

if  [[ ! -z `pidof eww`  ]]; then
    $EWW close-all 2>/dev/null
    $EWW kill 2>/dev/null
    killall eww 2>/dev/null 
else
    $EWW daemon && $EWW open bar
fi



