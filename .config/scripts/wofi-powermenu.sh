#!/bin/bash

entries="⇠ logout\n⏾ suspend\n⭮ reboot\n⏻ shutdown"

selected=$(echo -e $entries | wofi --width 250 --height 240 --dmenu --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
logout)
	pkill -u kia
	;;
suspend)
	exec systemctl suspend
	;;
reboot)
	exec systemctl reboot
	;;
shutdown)
	exec systemctl poweroff
	;;
	# it used to be poweroff -i
esac
