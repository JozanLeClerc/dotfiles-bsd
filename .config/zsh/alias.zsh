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

alias exa='exa --color=always --group-directories-first --icons' \
	ls='exa -l'
tree() {
	exa -T $@ | less
}
alias \
	e='editorcmd' \
	vim='editorcmd' \
	c='clear' \
	less='less --tabs 4' \
	bc='bc -l' \
	mkf='gmake fclean' \
	mkc='gmake clean' \
	mk='gmake -j5' \
	bmkc='make clean' \
	bmk='make -j5' \
	web='w3m https://duckduckgo.com/' \
	mpv='mpv --audio-channels=stereo' \
	bat='bat --style=plain --tabs 4 --paging=always -f' \
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
	fsl='fossil' \
	diff='colordiff' \
	ctags='uctags "--exclude=.ccls*"' \
	yt='pipe-viewer -f' \
	yta='pipe-viewer -n' \
	gyt='gtk-pipe-viewer' \
	ytdl='yt-dlp --add-metadata' \
	ytdlist='yt-dlp -F' \
	ytdl1080="yt-dlp --add-metadata -f '[height<=1080]'" \
	irssi='irssi --config="$XDG_CONFIG_HOME"/irssi/config --home="$XDG_DATA_HOME"/irssi' \
	irc='irssi' \
	dgit='git --git-dir=$HOME/docs/dotfiles-bsd --work-tree=$HOME' \
	vpsdo='/usr/home/jozan/dev/perl/serv-scripts/vps-do.pl'
confgit() {
	p=$(pwd)
	cd /
	git --git-dir=$HOME/docs/conffiles-bsd --work-tree=/ $@
	cd $p
}
upsrc() {
	doas git -C /usr/src pull --ff-only
}
upports() {
	doas pkg update &&
		doas git -C /usr/ports pull --ff-only &&
		doas portmaster -a
}
alias realupdate='doas portmaster -dya --no-confirm'
alias \
	gst='git status' \
	ga='git add' \
	gco='git commit -m' \
	gpp='git push' \
	gpo='git push origin' \
	gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d %C(reset)%n'' %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all" \
	srcnt='find . -type f -name "*.c" -exec cat {} \; | sed "/^\//d" | sed "/^\*/d" | sed "/^ \*/d" | sed "/^\/\//d" | sed "/^$/d" | wc -l | tr -d " "' \
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
	${VISUAL} $sc
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
	$VISUAL $sc
	cd $p
}
pa() {
	if [ -d $HOME/.local/packs ] && cd $HOME/.local/packs || return 1
	dir=$(\ls $HOME/.local/packs | fzf)
	[ -z $dir ] && return || cd $dir
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
alias nb='newsboat' \
	mutt='neomutt' \
	sxiv='sxiv -b -a' \
	pinfo='pkg info -x' \
	psearch='pkg search' \
	pinstall='doas pkg install' \
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
