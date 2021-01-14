#!/bin/bash

# window is opened and has focus -> close
if xdotool getwindowfocus getwindowname | grep 'Zim' 2>/dev/null 2>&1; then
  wmctrl -c zim
# window is opened but not focused -> change focus
elif wmctrl -l | grep 'Zim' 2>/dev/null 2>&1; then
  wmctrl -R zim
# window is not opened -> open
else
  zim
fi
