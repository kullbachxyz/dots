#!/bin/sh
userresources=$HOME/.config/xresources

# merge in defaults and keymaps
[ -f "$userresources" ] && xrdb -merge "$userresources"

if [ -f ~/.config/shell/profile ]; then
    source ~/.config/shell/profile
fi

pipewire &
pipewire-pulse &
wireplumber &
dwmblocks &
unclutter &
dunst &

xwallpaper --zoom ~/.local/share/bg &

exec dbus-launch dwm
