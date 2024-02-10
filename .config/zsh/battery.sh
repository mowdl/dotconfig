#!/bin/bash

battery_info=$(pmset -g batt)
battery_percentage=$(echo "$battery_info" | awk -F'[\t;%]' '/InternalBattery/ {print $2}')

# Check if the Mac is currently charging
if [[ $battery_info == *" charging"* ]]; then
	icon=" " # Charging icon (use Nerd Font icon)
else
	icon="󰁹" # Battery icon (use Nerd Font icon)
fi

echo "$icon$battery_percentage%"
