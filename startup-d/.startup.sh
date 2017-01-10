#!/bin/sh
setxkbmap dvorak
numlockx on
redshift -l 39.9:-75.2 &
xbindkeys
xmodmap
feh --bg-fill .wallpaper.png
compton -r 0 -o .8 -l 2 -t 2 &
urxvt -geometry +500+300 &
#xrandr --output DisplayPort-1 --off --output DisplayPort-0 --off --output DVI-1 --mode 1280x1024 --pos 1600x0 --rotate left --output DVI-0 --primary --mode 1600x900 --pos 0x380 --rotate normal --output HDMI-0 --off
xrandr --output DisplayPort-1 --off --output DisplayPort-0 --off --output DVI-1 --mode 1280x1024 --pos 1920x0 --rotate left --output DVI-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-0 --off
