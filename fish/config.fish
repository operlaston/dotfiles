if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
starship init fish | source
zoxide init fish | source

set DEVICONS_GLYPHS_LOADED 1
set EDITOR /usr/bin/vim
set PATH /home/mlee/.local/bin:/home/mlee/bin:/home/mlee/.cargo/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/opt/nvim

cat ~/.cache/wal/sequences

abbr -a c clear
abbr -a code "code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform-hint=auto"
abbr -a logout "loginctl terminate-user $(whoami)"
abbr -a waybar-reload "pkill waybar && hyprctl dispatch exec waybar"

abbr -a updatedotfiles "~/.config/scripts/updatedotfiles.sh"

function whatprovides -a pkg_name
  sudo dnf repoquery --whatprovides "pkgconfig($pkg_name)"
end

function check -a pkg_name
  dnf list "$pkg_name"
end

function changewall -a image_path
  ~/.config/scripts/change_wallpaper.sh "$image_path"
end
