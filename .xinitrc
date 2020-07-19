# ~/.fehbg &
sxhkd & # Hotkey daemon
#For Dunst
systemctl --user import-environment DISPLAY
# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd
[[ -f ~/.Xresources ]] && xrdb -merge -I $HOME ~/.Xresources
xcompmgr &  # Composite manager for transparenc
# exec dbus-launch i3
slstatus &
WALLPAPER=$(find ~/pictures/wallpapers/ -type f | shuf --random-source=/dev/urandom -n 1)
wal -i $WALLPAPER 
# map capslock to ESC
setxkbmap -option caps:escape
# set keyboard layout
setxkbmap -layout us -variant altgr-intl -option nodeadkeys
while :; do
    ssh-agent dwmc
done
