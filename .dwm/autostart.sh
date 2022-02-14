setxkbmap -layout us
# dwmblocks
# auto start service
ibus-daemon -dr -x
picom --experimental-backends &
feh --bg-fill ~/.wallpaper/chloe.png &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
volumeicon &
kitty &
spectacle -s
