# ~/.fehbg &
sxhkd & # Hotkey daemon
WALLPAPER=$(find ~/pictures/wallpapers/ - type f | shuf -n 1)
wal -i $WALLPAPER 
#For Dunst
systemctl --user import-environment DISPLAY
# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd
[[ -f ~/.Xresources ]] && xrdb -merge -I $HOME ~/.Xresources
xcompmgr &  # Composite manager for transparenc
# exec dbus-launch i3
slstatus &
while :; do
    ssh-agent dwmc
done
