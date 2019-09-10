#!bin/sh
#
#~/.xinitrc
#
#executed by startx (run window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*/; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

udiskie &
xrdb -merge ~/.Xresources
exec i3
