#!/bin/sh

# <--- Monitor setups ---> #

# Virtual Machine
#xrandr --output "Virtual-1" --mode 1920x1080

# Main Machine
xrandr \
  --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal \
  --output DP-1 --mode 1920x1080 --right-of HDMI1 --rotate normal

feh --bg-fill ~/wallpapers/wallpaper.png

picom -b

setxkbmap de

alias vim="nvim"

exec dwm
