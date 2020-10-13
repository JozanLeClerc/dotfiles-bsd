export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

autoload -U colors && colors

HISTSIZE=5000
SAVEHIST=5000
HISTFILE=$XDG_CONFIG_HOME/zsh/history
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

setopt inc_append_history
setopt share_history

autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zmodload zsh/complist
compinit
_comp_options+=(globdots)

bindkey -v
export KEYTIMEOUT=1
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -v "^?" backward-delete-char
bindkey -v "^[[A" history-beginning-search-backward
bindkey -v "^[[B" history-beginning-search-forward
# bindkey -v "^K" history-beginning-search-backward
# bindkey -v "^J" history-beginning-search-forward
bindkey -M vicmd "k" history-beginning-search-backward
bindkey -M vicmd "j" history-beginning-search-forward

autoload edit-command-line && zle -N edit-command-line
bindkey "^e" edit-command-line

[ -f "$XDG_CONFIG_HOME/zsh/alias.zsh" ]		&& source $ZDOTDIR/alias.zsh
[ -f "$XDG_CONFIG_HOME/zsh/plugins.zsh" ]	&& source $ZDOTDIR/plugins.zsh

globalias() {
	if [[ $LBUFFER =~ '^[a-z0-9]+$' ]]; then
		zle _expand_alias
		zle expand-word
	fi
	zle self-insert
}

zle -N globalias

bindkey -v " " globalias
bindkey -v "^ " magic-space
bindkey -M isearch " " magic-space

PROMPT="%B%{$fg[red]%}%M %{$fg[blue]%}%c%{$fg[red]%}%%%{$reset_color%} "
RPROMPT="${RPROMPT}"'%{$fg_bold[red]%}%(?..%?)%{$reset_color%} $(gitprompt)'
