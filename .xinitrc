#!/bin/sh
userresources=$HOME/.config/xresources
usermodmap=$HOME/.config/xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
[ -f $sysresources ] && xrdb -merge $sysresources
[ -f $sysmodmap ] && xmodmap $sysmodmap
[ -f "$userresources" ] && xrdb -merge "$userresources"
[ -f "$usermodmap" ] && xmodmap "$usermodmap"

pipewire &
pipewire-pulse &
wireplumber &
dwmblocks &
#dunst &

xwallpaper --zoom ~/.local/share/bg &

exec dbus-launch dwm
