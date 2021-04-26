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

alias exa='exa --color=always --group-directories-first' \
	ls='exa -l'
tree() {
	exa -T $@ | less
}
alias c='clear' \
	less='less --tabs 4' \
	bc='bc -l' \
	mkf='gmake fclean' \
	mkc='gmake clean' \
	mk='gmake -j5' \
	bmkc='make clean' \
	bmk='make -j5' \
	web='w3m https://duckduckgo.com/' \
	mpv='mpv --audio-channels=stereo' \
	cp='cp -iv' \
	mv='mv -iv' \
	rm='rm -v' \
	ln='ln -v' \
	df='df -h' \
	du='du -h' \
	mkdir='mkdir -v' \
	rmdir='rmdir -v' \
	chmod='chmod -v' \
	chown='chown -v' \
	mount='mount -v' \
	rsync='rsync -v -h -P' \
	grep='grep --color=always' \
	rgrep='grep -R -n -H' \
	vifm='TERM=xterm-256color vifm' \
	fetch='torify fetch' \
	fsl='fossil' \
	diff='colordiff' \
	ctags='uctags "--exclude=.ccls*"' \
	yt='straw-viewer --api=auto -C -f' \
	yta='straw-viewer --api=auto -C -n' \
	gyt='gtk-straw-viewer' \
	ytdl='youtube-dl --add-metadata' \
	ytdlist='youtube-dl -F' \
	ytdl1080="youtube-dl --add-metadata -f '[height<=1080]'" \
	dgit='git --git-dir=$HOME/docs/dotfiles-bsd --work-tree=$HOME'
confgit() {
	p=$(pwd)
	cd /
	git --git-dir=$HOME/docs/conffiles-bsd --work-tree=/ $@
	cd $p
}
alias vim='nvim' \
	gst='git status' \
	ga='git add' \
	gco='git commit -m' \
	gpp='git push' \
	gpo='git push origin' \
	srcnt='find . -type f -name "*.c" -exec cat {} \; | sed "/^\//d" | sed "/^\*/d" | sed "/^ \*/d" | sed "/^\/\//d" | sed "/^$/d" | wc -l | tr -d " "' \
	startdocker='sudo service vboxnet onerestart && docker-machine start docker-home' \
	stopdocker='docker-machine stop docker-home' \
	envdocker='eval $(docker-machine env docker-home)' \
	vimz='nvim $(fzf --preview="head -$FZF_PREVIEW_LINES {}")' \
	v='nvim $(fzf --preview="head -$FZF_PREVIEW_LINES {}")' \
	tohex='printf "0x%x\n"'
vimbin() {
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
vimconf() {
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
alias nb='torify newsboat' \
	mutt='neomutt' \
	sxiv='sxiv -b -a' \
	pinfo='pkg info -x' \
	psearch='pkg search' \
	highlight='highlight -Oxterm256 -t4' \
	hi='highlight'
hil() {
	highlight -Oxterm256 -t4 "$1" | less
}
search() {
	make -C /usr/ports search name=$1 | grep 'Path:';
}
alias watch='cmdwatch' \
	tsd='transmission-daemon' \
	tsm='transmission-remote' \
	rsox='sox -t oss default' \
	calcurse='calcurse -C $XDG_CONFIG_HOME/calcurse -D $XDG_DATA_HOME/calcurse' \
	open='xdg-open' \
	abook='abook -C $XDG_CONFIG_HOME/abook/abookrc --datafile $XDG_DATA_HOME/abook/addressbook' \
	dosbox='dosbox -conf $XDG_CONFIG_HOME/dosbox/dosbox.conf' \
	svn='svn --config-dir $XDG_CONFIG_HOME/subversion' \
	gpg2='gpg2 --homedir $XDG_DATA_HOME/gnupg' \
	yarn='yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config' \
	wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
