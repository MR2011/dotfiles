#
# ~/.bashrc
#
source ~/.config/aliasrc # load alias
shopt -s autocd #Allows you to cd into directory merely by typing the directory name
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="[\t] \w \\$ \[$(tput sgr0)\]"
# (cat ~/.cache/wal/sequences &)
#Autocompletion
complete -cf sudo #autocomplete for sudo 
bind 'TAB':menu-complete #cycle through suggestions with tab
bind "set show-all-if-ambiguous on"

