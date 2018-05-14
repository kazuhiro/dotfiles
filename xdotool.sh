#!/bin/bash

TERMINATOR_WINDOW_ID=`xdotool search --onlyvisible --classname "Terminal"`
ACTIVE_WINDOW_ID=`xdotool getwindowfocus`

if [ "$TERMINATOR_WINDOW_ID" == "" ]; then
   xfce4-terminal
else
   if [ "$TERMINATOR_WINDOW_ID" == "$ACTIVE_WINDOW_ID" ]; then
    xdotool keydown Alt+Shift+Page_Down
    xdotool keyup Alt+Shift+Page_Down
   else
    xdotool windowactivate $TERMINATOR_WINDOW_ID
   fi
fi
