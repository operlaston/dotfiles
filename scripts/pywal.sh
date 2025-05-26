#!/usr/bin/env bash

ln -sf ~/.cache/wal/colors-waybar.css ~/.config/waybar/colors.css
ln -sf ~/.cache/wal/colors-waybar.css ~/.config/swaync/colors.css

# refresh swaync
swaync-client -rs

# refresh waybar
pkill waybar
hyprctl dispatch exec waybar

# notification
notify-send "pywal: color scheme changed"

