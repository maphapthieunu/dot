#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:~/.steam/root/compatibilitytools.d/GE-Proton10-15:$PATH"
export STEAM_COMPAT_DATA_PATH="~/.proton"
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export EDITOR=nvim
export QT_STYLE_OVERRIDE=kvantum
export GTK_THEME=catppuccin-mocha-mauve-standard+default
