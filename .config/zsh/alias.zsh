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

alias exa='exa --color=always --group-directories-first'
alias ls='exa -l'
tree() {
	exa -T $@ | less
}
alias c='clear'
alias less='less --tabs 4'
alias bc='bc -l'
alias mkf='gmake fclean'
alias mkc='gmake clean'
alias mk='gmake -j5'
alias bmkc='make clean'
alias bmk='make -j5'
alias web='w3m https://duckduckgo.com/'
alias mpv='mpv --audio-channels=stereo'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -v'
alias ln='ln -v'
alias df='df -h'
alias du='du -h'
alias mkdir='mkdir -v'
alias rmdir='rmdir -v'
alias chmod='chmod -v'
alias chown='chown -v'
alias mount='mount -v'
alias rsync='rsync -v -h -P'
alias grep='grep --color=always'
alias rgrep='grep -R -n -H'
alias vifm='TERM=xterm-256color vifm'
alias fetch='torify fetch'
alias fsl='fossil'
alias diff='colordiff'
alias ctags='uctags "--exclude=.ccls*"'
alias yt='straw-viewer --api=auto -C -f'
alias yta='straw-viewer --api=auto -C -n'
alias gyt='gtk-straw-viewer'
alias ytdl='youtube-dl --add-metadata'
alias ytdlist='youtube-dl -F'
alias ytdl1080="youtube-dl --add-metadata -f '[height<=1080]'"
alias dgit='git --git-dir=$HOME/docs/dotfiles-bsd --work-tree=$HOME'
confgit() {
	p=$(pwd)
	cd /
	git --git-dir=$HOME/docs/conffiles-bsd --work-tree=/ $@
	cd $p
}
alias vim='nvim'
alias gst='git status'
alias ga='git add'
alias gco='git commit -m'
alias gpp='git push'
alias gpo='git push origin'
alias srcnt='find . -type f -name "*.c" -exec cat {} \; | sed "/^\//d" | sed "/^\*/d" | sed "/^ \*/d" | sed "/^\/\//d" | sed "/^$/d" | wc -l | tr -d " "'
alias startdocker='sudo service vboxnet onerestart && docker-machine start docker-home'
alias stopdocker='docker-machine stop docker-home'
alias envdocker='eval $(docker-machine env docker-home)'
alias vimz='nvim $(fzf --preview="head -$FZF_PREVIEW_LINES {}")'
alias v='nvim $(fzf --preview="head -$FZF_PREVIEW_LINES {}")'
alias tohex='printf "0x%x\n"'
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
alias nb='torify newsboat'
alias mutt='neomutt'
alias sxiv='sxiv -b -a'
alias pinfo='pkg info -x'
alias psearch='pkg search'
alias highlight='highlight -Oxterm256 -t4'
alias hi='highlight'
hil() {
	highlight -Oxterm256 -t4 "$1" | less
}
search() {
	make -C /usr/ports search name=$1 | grep 'Path:';
}
alias watch='cmdwatch'
alias tsd='transmission-daemon'
alias tsm='transmission-remote'
alias rsox='sox -t oss default'
alias calcurse='calcurse -C $XDG_CONFIG_HOME/calcurse -D $XDG_DATA_HOME/calcurse'
alias open='xdg-open'
alias abook='abook -C $XDG_CONFIG_HOME/abook/abookrc --datafile $XDG_DATA_HOME/abook/addressbook'
alias dosbox='dosbox -conf $XDG_CONFIG_HOME/dosbox/dosbox.conf'
alias svn='svn --config-dir $XDG_CONFIG_HOME/subversion'
alias gpg2='gpg2 --homedir $XDG_DATA_HOME/gnupg'
alias yarn='yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config'
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
