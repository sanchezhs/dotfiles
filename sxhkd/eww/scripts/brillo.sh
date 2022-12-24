#!/usr/bin/bash

# convertir a float
#while true; do
#echo `brightnessctl g` 0.0 + p | dc
#done
while true; do
    echo `xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' '`
    sleep 10;
done