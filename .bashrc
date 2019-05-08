#
# ~/.bashrc
#
shopt -s autocd #Allows you to cd into directory merely by typing the directory name
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# (cat ~/.cache/wal/sequences &)
#Autocompletion
complete -cf sudo #autocomplete for sudo 
bind 'TAB':menu-complete #cycle through suggestions with tab
bind "set show-all-if-ambiguous on"

#Config Aliases
alias vimrc="vim ~/.vimrc"
alias i3config="vim ~/.config/i3/config"
alias xresource="vim ~/.Xresources"
alias xinitrc="vim ~/.xinitrc"
alias bashrc="vim ~/.bashrc"
alias bashrc_reload="source ~/.bashrc"

#directory Aliases
alias ..="cd .."
alias thesis="cd ~/documents/thesis"
alias dev="cd ~/development"

alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias halt="sudo systemctl halt"
alias steam="flatpak run com.valvesoftware.Steam"
alias mountusb="sudo ~/scripts/mount.sh"

