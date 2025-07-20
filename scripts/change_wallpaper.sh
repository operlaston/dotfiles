#!/usr/bin/env bash

image=
imagepath=
folder="$HOME/pictures/wallpapers"

if [ -z "$1" ]; then
  imagepath="$folder"
  echo "No image provided. A random wallpaper will be chosen."
else
  image=$(ls "$folder" | grep -i "$1" | head -n 1)
  if [ -z "$image" ]; then
    imagepath="$folder"
    echo "No images matched. A random wallpaper will be chosen."
  else
    imagepath="$folder/$image"
  fi
fi

$HOME/.local/bin/wal -i "$imagepath" -o "$HOME/.config/scripts/pywal.sh" --cols16
swww img "$(< "${HOME}/.cache/wal/wal")" --transition-type center --transition-fps 60 --transition-duration 2 --resize crop
