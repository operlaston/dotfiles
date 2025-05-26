#!/usr/bin/bash

rm -rf ~/dotfiles/*
cp ~/.wezterm.lua ~/dotfiles
cd ~/.config
cp -r swaync fastfetch hypr rofi fish nvim scripts waybar ~/dotfiles

cd ~/dotfiles
git add -A
git commit -m "update $(date)"
git push
