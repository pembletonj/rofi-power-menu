#!/bin/bash

option="$(printf 'Log out\nPower off\nReboot\n' | rofi -dmenu)"

if [ "$option" = "Log out" ]; then
	# printf "Logging out.\n"
	loginctl terminate-user $(whoami)
elif [ "$option" = "Power off" ]; then
	# printf "Powering off.\n"
	loginctl poweroff
elif [ "$option" = "Reboot" ]; then
	# printf "Rebooting.\n"
	loginctl reboot
fi
