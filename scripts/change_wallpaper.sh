#!/usr/bin/env bash

image=
imagepath=
folder="$HOME/pictures/wallpapers"

if [ -z "$1" ]; then
  image=$(ls "$folder" | rofi -dmenu)
  if [ -z "$image" ]; then
    exit 1
  else 
    imagepath="$folder/$image"
  fi
else
  image=$(ls "$folder" | grep -i "$1" | head -n 1)
  if [ -z "$image" ]; then
    echo "No images matched."
    exit 1
  else
    imagepath="$folder/$image"
  fi
fi

$HOME/.local/bin/wal -i "$imagepath" -o "$HOME/.config/scripts/pywal.sh" --cols16
swww img "$(< "${HOME}/.cache/wal/wal")" --transition-type fade --transition-fps 60 --transition-duration 2 --resize crop
