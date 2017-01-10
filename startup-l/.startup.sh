#!/bin/sh
setxkbmap dvorak
redshift -l 39.9:-75.2 &
feh --bg-fill .wallpaper.png
xmodmap .xmodmap
xscreensaver -q &
xss-lock -- xscreensaver-command --lock &
