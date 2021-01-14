#!/bin/bash

# window is opened and has focus -> close
if xdotool getwindowfocus getwindowname | grep 'CherryTree' 2>/dev/null 2>&1; then
  wmctrl -c cherrytree
# window is opened but not focused -> change focus
elif wmctrl -l | grep 'CherryTree' 2>/dev/null 2>&1; then
  wmctrl -R cherrytree
# window is not opened -> open
else
  cherrytree
fi
