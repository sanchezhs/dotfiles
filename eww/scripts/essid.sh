#!/usr/bin/bash

iwconfig wlo1 2> /dev/null | awk -F\" '{print $2}'

