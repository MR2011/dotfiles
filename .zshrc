autoload colors && colors
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
source ~/.config/aliasrc

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# VI Mode
bindkey -v
export KEYTIMEOUT=1

# Edit line in vim with ctrl+e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# ctrl + r history in vi mode
bindkey "^R" history-incremental-search-backward

function zle-line-init zle-keymap-select {
    case ${KEYMAP} in
	(vicmd)		VI_MODE="%{$fg[yellow]%}[N]%{$reset_color%}" 
			echo -ne '\e[1 q' ;; # big cursor
	(*)		VI_MODE="%{$fg[cyan]%}[I]%{$reset_color%}"
			echo -ne '\e[5 q' ;; # small cursor
    esac
    PS1="${VI_MODE}[%*] %~ $ "
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# For FZF
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
