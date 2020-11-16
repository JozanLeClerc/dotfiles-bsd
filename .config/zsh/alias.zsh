# alias.zsh
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

alias ls='exa -l --group-directories-first'
alias cat="sed ''"
alias c='clear'
alias less='less --tabs 4'
alias bc='clear; bc -l'
alias mkf='gmake fclean'
alias mkc='gmake clean'
alias mk='gmake -j5'
alias web='w3m https://duckduckgo.com/'
alias mpv='mpv --audio-channels=stereo'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -v'
alias ln='ln -v'
alias df='df -H'
alias du='du --si'
alias mkdir='mkdir -v'
alias rmdir='rmdir -v'
alias chmod='chmod -v'
alias chown='chown -v'
alias mount='mount -v'
alias grep='grep --color'
alias rgrep='grep -R -n -H'
alias fsl='fossil'
alias diff='colordiff'
alias tree='exa -T'
alias yt='straw-viewer --api=auto'
alias gyt='gtk-straw-viewer'
alias ytdl='youtube-dl'
alias dgit='git --git-dir=$HOME/docs/dotfiles-bsd --work-tree=$HOME'
alias vim='nvim'
alias gst='git status'
alias ga='git add'
alias gco='git commit -m'
alias gpp='git push'
alias gpo='git push origin'
alias srcnt='find . -type f -name "*.c" -exec cat {} \; | sed "/^\//d" | sed "/^\*/d" | sed "/^ \*/d" | sed "/^\/\//d" | sed "/^$/d" | wc -l | tr -d " "'
alias startdocker='sudo service vboxnet restart && docker-machine start docker-home'
alias stopdocker='docker-machine stop docker-home'
alias envdocker='eval `docker-machine env docker-home`'
alias vimz='nvim $(fzf --preview="head -$FZF_PREVIEW_LINES {}")'
alias v='nvim $(fzf --preview="head -$FZF_PREVIEW_LINES {}")'
vbi() {
	p=$(pwd)
	cd "$HOME"/.local/bin || return
	sc=$(fzf --preview='head -$FZF_PREVIEW_LINES {}')
	if [ ! "$sc" ]; then
		cd $p
		return
	fi
	nvim $sc
	cd $p
}
vco() {
	p=$(pwd)
	cd "$HOME"/.config || return
	sc=$(fzf --preview='head -$FZF_PREVIEW_LINES {}')
	if [ ! "$sc" ]; then
		cd $p
		return
	fi
	nvim $sc
	cd $p
}
pa() {
	if [ "$1" ]; then
		if cd "$HOME"/.local/packs/"$1"; then
			ls
		else
			cd "$HOME"/.local/packs && ls
		fi
	else
		cd "$HOME"/.local/packs && ls
	fi
}
co() {
	if [ "$1" ]; then
		if cd "$XDG_CONFIG_HOME"/"$1"; then
			ls
		else
			cd "$XDG_CONFIG_HOME" && ls
		fi
	else
		cd "$XDG_CONFIG_HOME" && ls
	fi
}
da() {
	if [ "$1" ]; then
		if cd "$XDG_DATA_HOME"/"$1"; then
			ls
		else
			cd "$XDG_DATA_HOME" && ls
		fi
	else
		cd "$XDG_DATA_HOME" && ls
	fi
}
alias bi='cd $HOME/.local/bin && ls'
twi() {
	mpview https://twitch.tv/"$1";
}
alias nb='newsboat'
alias mutt='neomutt'
alias nmt='neomutt'
alias sxiv='sxiv -b'
alias pinfo='pkg info -x'
alias psearch='pkg search'
search() {
	make -C /usr/ports search name=$1 | grep 'Path:';
}
alias watch='cmdwatch'
alias tsd='transmission-daemon'
alias tsm='transmission-remote'
alias rsox='sox -t oss default'
alias calcurse='calcurse -C $XDG_CONFIG_HOME/calcurse -D $XDG_DATA_HOME/calcurse'
alias abook='abook -C $XDG_CONFIG_HOME/abook/abookrc --datafile $XDG_DATA_HOME/abook/addressbook'
alias dosbox='dosbox -conf $XDG_CONFIG_HOME/dosbox/dosbox.conf'
alias svn='svn --config-dir $XDG_CONFIG_HOME/subversion'
alias gpg2='gpg2 --homedir $XDG_DATA_HOME/gnupg'
alias yarn='yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config'
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
alias rsync='rsync -v -h'
