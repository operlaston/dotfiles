if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting
starship init fish | source
zoxide init fish | source

set DEVICONS_GLYPHS_LOADED 1
set EDITOR /usr/bin/vim
set PATH /home/mlee/.local/bin:/home/mlee/bin:/home/mlee/.cargo/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/opt/nvim

abbr -a c clear
abbr -a code "code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform-hint=auto"
abbr -a logout "loginctl terminate-user $(whoami)"

abbr -a ud "~/.config/scripts/updatedotfiles.sh"

function whatprovides -a pkg_name
  sudo dnf repoquery --whatprovides "pkgconfig($pkg_name)"
end

function check -a pkg_name
  dnf list "$pkg_name*"
end
