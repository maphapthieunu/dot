## Dependencies:
# chaotic-aur/pipewire-support
# extra/ibus
# chaotic-aur/picom-ibhagwan-git
# community/volumeicon
# extra/spectacle
# community/kitty
# aur/neo-matrix

# PipeWire
/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &
# Ibus
ibus-daemon -drxR &
# Status bar
dwmblocks &
# Spectacle
spectacle -s &
# Network tray
nm-applet &
# Polkit agent
/usr/lib/polkit-kde-authentication-agent-1 &
# Background
nitrogen --restore
# Compositor
picom --experimental-backends &
# Terminal
kitty neo-matrix -D -m 'you just opened my pc lol' &
