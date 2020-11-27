#!/bin/bash

# window is opened and has focus -> close
if xdotool getwindowfocus getwindowname | grep 'Joplin' 2>/dev/null 2>&1; then
  wmctrl -c Joplin
# window is opened but not focused -> change focus
elif wmctrl -l | grep 'Joplin' 2>/dev/null 2>&1; then
  wmctrl -a Joplin
# window is not opened -> open
else
  /home/simon/.joplin/Joplin.AppImage --no-sandbox
fi
