if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k"

if [ "$TERM" = "linux" ]; then
	printf %b '\e[40m' '\e[8]' # set default background to color 0 'dracula-bg'
	printf %b '\e[37m' '\e[8]' # set default foreground to color 7 'dracula-fg'
	printf %b '\e]P0282a36'    # redefine 'black'          as 'dracula-bg'
	printf %b '\e]P86272a4'    # redefine 'bright-black'   as 'dracula-comment'
	printf %b '\e]P1ff5555'    # redefine 'red'            as 'dracula-red'
	printf %b '\e]P9ff7777'    # redefine 'bright-red'     as '#ff7777'
	printf %b '\e]P250fa7b'    # redefine 'green'          as 'dracula-green'
	printf %b '\e]PA70fa9b'    # redefine 'bright-green'   as '#70fa9b'
	printf %b '\e]P3f1fa8c'    # redefine 'brown'          as 'dracula-yellow'
	printf %b '\e]PBffb86c'    # redefine 'bright-brown'   as 'dracula-orange'
	printf %b '\e]P4bd93f9'    # redefine 'blue'           as 'dracula-purple'
	printf %b '\e]PCcfa9ff'    # redefine 'bright-blue'    as '#cfa9ff'
	printf %b '\e]P5ff79c6'    # redefine 'magenta'        as 'dracula-pink'
	printf %b '\e]PDff88e8'    # redefine 'bright-magenta' as '#ff88e8'
	printf %b '\e]P68be9fd'    # redefine 'cyan'           as 'dracula-cyan'
	printf %b '\e]PE97e2ff'    # redefine 'bright-cyan'    as '#97e2ff'
	printf %b '\e]P7f8f8f2'    # redefine 'white'          as 'dracula-fg'
	printf %b '\e]PFffffff'    # redefine 'bright-white'   as '#ffffff'
	clear
fi

zstyle ':omz:update' frequency 1

DISABLE_MAGIC_FUNCTIONS="true"

DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd/mm/yyyy"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias pavucontrol=pavucontrol-qt
alias ek='nvim ~/.config/kitty/kitty.conf && rm -rfv ~/nooneasked/.config/kitty/* && cp -rfv ~/.config/kitty/* ~/nooneasked/.config/kitty/'
alias ez='nvim ~/.zshrc && cp -rfv ~/.zshrc ~/nooneasked/.zshrc'
alias en='nvim ~/.config/neofetch/config.conf && cp -rfv ~/.config/neofetch/* ~/nooneasked/.config/neofetch/'
alias ed="cd ~/dwm && rm -rfv config.h && nvim config.def.h && sudo make clean install && git add --all && git commit -am 'automated update' && git push"
alias eda="nvim ~/.dwm/autostart.sh && cp -rfv ~/.dwm/autostart.sh ~/nooneasked/.dwm/autostart.sh"
alias ep='nvim ~/.config/picom/picom.conf && cp -rfv ~/.config/picom/* ~/nooneasked/.config/picom/'
alias epr='nvim ~/.profile && cp -rfv ~/.profile ~/nooneasked/.profile'
alias ck='kvantummanager && rm -rfv ~/nooneasked/.config/Kvantum/* && cp -rfv ~/.config/Kvantum/* ~/nooneasked/.config/Kvantum/'
alias uh="cd ~/nooneasked && git add --all && git commit -am 'automated update' && git push"
alias discord="powercord --ignore-gpu-blocklist --disable-features=UseOzonePlatform --enable-features=VaapiVideoDecoder --use-gl=desktop --enable-gpu-rasterization --enable-zero-copy"
alias powercord="powercord --ignore-gpu-blocklist --disable-features=UseOzonePlatform --enable-features=VaapiVideoDecoder --use-gl=desktop --enable-gpu-rasterization --enable-zero-copy"
alias discord-canary="powercord --ignore-gpu-blocklist --disable-features=UseOzonePlatform --enable-features=VaapiVideoDecoder --use-gl=desktop --enable-gpu-rasterization --enable-zero-copy"
alias epk="nvim ~/.p10k.zsh && cp -rfv ~/.p10k.zsh ~/nooneasked/.p10k.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

treefetch
