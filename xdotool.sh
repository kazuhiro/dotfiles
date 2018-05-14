#!/bin/bash

process_name="xfce4-terminal"
app="xfce4-terminal"

pid=$(pgrep -f $process_name)

# If it isn't launched, then launch

if [ -z $pid ]; then
    $app

else

    # If it is launched then check if it is focused

    foc=$(xdotool getactivewindow getwindowpid)
    if [[ $pid == $foc ]]; then
	# if it is focused, then minimize
	xdotool getactivewindow windowminimize
    else
	# if it isn't focused then get focus
	wmctrl -x -R $app
    fi
fi
