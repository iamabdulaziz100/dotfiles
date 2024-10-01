#!/bin/bash

picom --daemon &

feh --bg-fill ~/wallpapers/0042.jpg

nm-applet &

setxkbmap -option ctrl:nocaps

dunst &
