#!/bin/bash
# https://github.com/MateoNitro550/xxxwindowPolybarModule

WM_DESKTOP=$(xdotool getwindowfocus)

if [ $WM_DESKTOP == "1922" ]; then

	#echo " %{F#a89984}{}=%{u-} "
	echo "~"

elif [ $WM_DESKTOP != "1883" ]; then

	WM_CLASS=$(xprop -id $(xdotool getactivewindow) WM_CLASS | awk 'NF {print $NF}' | sed 's/"/ /g')
	WM_NAME=$(xprop -id $(xdotool getactivewindow) WM_NAME | cut -d '=' -f 2 | awk -F\" '{ print $2 }')
	#echo " " $WM_CLASS
	#echo " " $WM_NAME
	echo "%{F#a89984}$WM_CLASS%{u-}"
#	if [ $WM_CLASS == "1922" ]; then
#
#		echo " %{F#ffffff}Custom name%{u-} "
#	
#	elif [ $WM_NAME == "1922" ]; then
#
#		echo " %{F#ffffff}Custom name%{u-} "
#
#	else
#
#		echo " %{F#ffffff}$WM_NAME%{u-} "
#
#	fi

fi