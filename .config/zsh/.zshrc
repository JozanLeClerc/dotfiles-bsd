# .zshrc
# ========================
# =====    ===============
# ======  ================
# ======  ================
# ======  ====   ====   ==
# ======  ===     ==  =  =
# ======  ===  =  ==     =
# =  ===  ===  =  ==  ====
# =  ===  ===  =  ==  =  =
# ==     =====   ====   ==
# ========================

autoload -U colors && colors

HISTSIZE=25000
SAVEHIST=25000
HISTFILE=$XDG_CONFIG_HOME/zsh/history

LESS_TERMCAP_mb=$(printf '\e[1;31m');		export LESS_TERMCAP_mb
LESS_TERMCAP_md=$(printf '\e[1;31m');		export LESS_TERMCAP_md
LESS_TERMCAP_me=$(printf '\e[0m');			export LESS_TERMCAP_me
LESS_TERMCAP_so=$(printf '\e[1;33;40m');	export LESS_TERMCAP_so
LESS_TERMCAP_se=$(printf '\e[0m');			export LESS_TERMCAP_se
LESS_TERMCAP_us=$(printf '\e[0;4;35m');		export LESS_TERMCAP_us
LESS_TERMCAP_ue=$(printf '\e[0m');			export LESS_TERMCAP_ue

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

setopt inc_append_history
setopt share_history

zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
autoload -U compinit
zmodload zsh/complist
compinit
_comp_options+=(globdots)

bindkey -v
KEYTIMEOUT=1
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -v "^?" backward-delete-char
bindkey -v "^[[A" history-beginning-search-backward
bindkey -v "^[[B" history-beginning-search-forward
bindkey -M vicmd "k" history-beginning-search-backward
bindkey -M vicmd "j" history-beginning-search-forward

autoload edit-command-line && zle -N edit-command-line
bindkey "^e" edit-command-line

autoload -U add-zsh-hook
exa_after_cd() {
	exa -l --icons --color=always --group-directories-first --no-permissions --no-user --no-time
}
add-zsh-hook chpwd exa_after_cd

autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic

[ -f "$ZDOTDIR"/alias.zsh ]								&& source "$ZDOTDIR"/alias.zsh
[ -f "$ZDOTDIR"/plugins.zsh ]							&& source "$ZDOTDIR"/plugins.zsh
[ -f "$XDG_PACKAGE_HOME"/fzf/shell/completion.zsh ]		&& source "$XDG_PACKAGE_HOME"/fzf/shell/completion.zsh
[ -f "$XDG_PACKAGE_HOME"/fzf/shell/key-bindings.zsh ]	&& source "$XDG_PACKAGE_HOME"/fzf/shell/key-bindings.zsh
[ -f "$XDG_CONFIG_HOME"/lf/icons ] && {
	LF_ICONS="$(tr '\n' ':' <"$XDG_CONFIG_HOME"/lf/icons)" \
		&& export LF_ICONS
}

globalias() {
	if [[ $LBUFFER =~ ^[a-z0-9]+$ ]]; then
		zle _expand_alias
		zle expand-word
	fi
	# zle self-insert
}

zle -N globalias

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' '^ulfcd\n'

bindkey -v "^ " globalias
bindkey -v " " magic-space
bindkey -M isearch " " magic-space

PROMPT="%B%{$fg[red]%}%M %{$fg[blue]%}%c%{$fg[red]%}%%%{$reset_color%} "
RPROMPT="%{$fg_bold[red]%}%(?..%?)%{$reset_color%}"
