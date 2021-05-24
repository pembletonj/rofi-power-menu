#!/bin/bash

option="$(printf 'Log out\nPower off\nReboot\n' | rofi -dmenu)"

if [ "$option" = "Log out" ]; then
	# printf "Logging out.\n"
	bspc quit
elif [ "$option" = "Power off" ]; then
	# printf "Powering off.\n"
	doas poweroff
elif [ "$option" = "Reboot" ]; then
	# printf "Rebooting.\n"
	doas reboot
fi
