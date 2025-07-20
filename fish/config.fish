if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
starship init fish | source
zoxide init fish | source

set DEVICONS_GLYPHS_LOADED 1
set FONT_DIR /usr/share/fonts
set EDITOR /usr/bin/vim
set PATH /home/mlee/.local/bin:/home/mlee/bin:/home/mlee/.cargo/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/opt/nvim

cat ~/.cache/wal/sequences

abbr -a c clear
abbr -a code "code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform-hint=auto"
abbr -a logout "loginctl terminate-user $(whoami)"
abbr -a waybar-reload "pkill waybar && hyprctl dispatch exec waybar"

abbr -a updatedotfiles "~/.config/scripts/updatedotfiles.sh"
abbr -a ls lsd
abbr -a helparch cat ~/arch.cheatsheet
abbr -a less less --LINE-NUMBERS

function changewall -a image_name
  ~/.config/scripts/change_wallpaper.sh "$image_name"
end

