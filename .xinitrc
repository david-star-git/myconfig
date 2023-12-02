#!/bin/sh

xrandr --output "Virtual1" --mode 1920x1080
feh --bg-fill ~/Pictures/wallpaper.png

picom -b

alias vim="nvim"

exec dwm
