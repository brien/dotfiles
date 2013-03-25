#!/bin/bash
#created by BSM on 2013 03 11

xmodmap ~/.Xmodmap

xset r rate 200 20

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

~/.dropbox-dist/dropboxd &

while true
do
	xsetroot -name $(date +'%H:%M')
	sleep 1m
done &

exec dwm
