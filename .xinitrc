userresources=$HOME/.Xresources
usermodmap=$HOME/Xmodmap
sysresources=/etc/X11/xinit/X.resources
sysmodmap=/etc/X11/xinit/.Xmodmap


# =======================================
# Merge in defaults and keymaps
# =======================================
if [ -f $sysresources ]; then
  xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
  xrdb -merge $sysmodmap
fi

if [ -f $userresources ]; then
  xrdb -merge $userresources
fi

if [ -f $usermodmap ]; then
  xrdb -merge $usermodmap
fi


# =======================================
# Start some nice programs
# =======================================
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi


# =======================================
# Setup window manager
# =======================================
exec /usr/local/bin/dwm
#exec /usr/bin/i3


# =======================================
# Setup wallpaper and terminal colorscheme
# =======================================
#wal -i ~/Pictures/Wallpapers/cyberpunk-1.jpg
#xwallpaper --zoom ~/Pictures/Wallpapers/solid_black.jpg
#setsid xcompmgr &
#xdotool key super+F5
#setsid slstatus &
#dwmstatus 2>&1 >/dev/null &


