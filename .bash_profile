#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export EDITOR=vim
export QT_STYLE_OVERRIDE=kvantum
