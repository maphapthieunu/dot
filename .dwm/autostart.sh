# for overriding another keyboard layout
setxkbmap -layout us
# yay -S dwmbar-git
dwmblocks &
# i use fcitx-unikey btw
ibus-daemon -drxR &
# compositor (yay -S picom-ibhagwan-git)
picom --experimental-backends &
# bg
feh --bg-fill ~/.wallpaper/chloe.png &
# volume icon
volumeicon &
# screenshotter
spectacle -s &
# desired terminal emulator
kitty &
