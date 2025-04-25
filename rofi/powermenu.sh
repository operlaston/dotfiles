#!/usr/bin/bash

lock=""
logout=""
shutdown=""
sleep=""

# Get answer from user via rofi
selected_option=$(echo "$lock
$logout
$sleep
$shutdown" | rofi -dmenu -i -p "Power" \
  -theme "~/.config/rofi/powermenu.rasi")
# Do something based on selected option
if [ "$selected_option" == "$lock" ]; then
  hyprlock
elif [ "$selected_option" == "$logout" ]; then
  loginctl terminate-user $(whoami)
elif [ "$selected_option" == "$shutdown" ]; then
  poweroff
elif [ "$selected_option" == "$sleep" ]; then
  systemctl suspend
else
  echo "No match"
fi
