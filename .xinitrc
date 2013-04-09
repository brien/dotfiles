#!/bin/bash
#created by BSM on 2013 03 11

xmodmap ~/.Xmodmap

xset r rate 200 20

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

~/.dropbox-dist/dropboxd &

while true
do
    VOL="Vol $(amixer get Master | tail -1 | sed 's/.*\[\([0-9]*%\)\].*/\1/')"
    TIME=$(date +'%H:%M')
    if acpi -a | grep off-line > /dev/null
    then
        BAT="Bat $(acpi -b | awk '{ print $4 " " $5 }' | tr -d ',')"
        xsetroot -name "| $BAT | $VOL | $TIME"
    else
        xsetroot -name "| $VOL | $TIME"
    fi 
	sleep 15s
done &

exec dwm
#exec openbox
