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
	exa -T $@ | $PAGER
}
alias \
	e='editorcmd' \
	vim='nvim' \
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
	rsync='rsync -v -h' \
	grep='grep --color=always' \
	rgrep='grep -R -n -H' \
	most='most -t4' \
	fsl='fossil' \
	diff='colordiff' \
	ctags='uctags "--exclude=.ccls*"' \
	yt='pipe-viewer' \
	yta='pipe-viewer -n' \
	gyt='gtk-pipe-viewer' \
	ytdl='yt-dlp --add-metadata' \
	ytdlist='yt-dlp -F' \
	ytdl1080="yt-dlp --add-metadata -f '[height<=1080]'" \
	irssi='irssi --config="$XDG_CONFIG_HOME"/irssi/config --home="$XDG_DATA_HOME"/irssi' \
	irc='irssi' \
	free='freecolor' \
	gt='gpg-tui' \
	lg='lazygit' \
	gjdo='/home/jozan/dev/perl/gitjoe-scripts/gitjoe-do.pl' \
	dgit='git --git-dir=$HOME/docs/dotfiles-bsd --work-tree=$HOME' \
	confgit='git --git-dir=$HOME/docs/conffiles-bsd --work-tree=/'
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
	gl="git log --graph --format=format:'%C(yellow)%h %C(bold blue)%ah %C(bold green)(%ar)%C(bold yellow)%d%C(reset) %s %C(dim white)- %an <%ae>%C(reset)' --all" \
	dgl="dgit log --graph --format=format:'%C(yellow)%h %C(bold blue)%ah %C(bold green)(%ar)%C(bold yellow)%d%C(reset) %s %C(dim white)- %an <%ae>%C(reset)' --all" \
	dgst="dgit status" \
	pgl="pass git log --graph --format=format:'%C(yellow)%h %C(bold blue)%ah %C(bold green)(%ar)%C(bold yellow)%d%C(reset) %s %C(dim white)- %an <%ae>%C(reset)' --all"
gg() {
	git add .
	git commit -m "$*" || return 1
	git push
}
dgg() {
	dgit add -u
	dgit commit -m "$*" || return 1
	dgit push
}
alias \
	srcnt='find . -type f -name "*.c" -exec cat {} \; | sed "/^\//d" | sed "/^\*/d" | sed "/^ \*/d" | sed "/^\/\//d" | sed "/^$/d" | wc -l | tr -d " "' \
	v='nvim $(fzf --preview="head -$FZF_PREVIEW_LINES {}")' \
	tohex='printf "0x%x\n"'
ebin() {
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
econf() {
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
eebin() {
	file=$(find "$HOME"/.local/bin -type f | fzf)
	[ $? -ne 0 ] && return
	bsdsetsid emacsclient -c "$file"
	kill -9 "$(ps -p $$ -oppid=)"
}
eeconf() {
	file=$(find "$HOME"/.config -type f | fzf)
	[ $? -ne 0 ] && return
	bsdsetsid emacsclient -c "$file"
	kill -9 "$(ps -p $$ -oppid=)"
}
ee() {
	file=$(find . -type f | fzf)
	[ $? -ne 0 ] && return
	bsdsetsid emacsclient -c "$file"
	kill -9 "$(ps -p $$ -oppid=)"
}
pa() {
	if [ -d $HOME/.local/packs ] && cd $HOME/.local/packs || return 1
	dir=$(\ls $HOME/.local/packs | fzf)
	[ -z $dir ] && return || cd $dir
}
co() {
	if [ "$1" ]; then
		if cd "$XDG_CONFIG_HOME"/"$1"; then
			:
		else
			cd "$XDG_CONFIG_HOME"
		fi
	else
		cd "$XDG_CONFIG_HOME"
	fi
}
da() {
	if [ "$1" ]; then
		if cd "$XDG_DATA_HOME"/"$1"; then
			:
		else
			cd "$XDG_DATA_HOME"
		fi
	else
		cd "$XDG_DATA_HOME"
	fi
}
alias bi='cd $HOME/.local/bin' \
	  sss='cd $HOME/docs/work/secuserve/scripts'
twi() {
	mpview https://twitch.tv/"$1";
}
alias nb='newsboat' \
	mutt='neomutt' \
	sxiv='nsxiv -b -a' \
	pinfo='pkg info -x' \
	psearch='pkg search' \
	pinstall='doas pkg install' \
	update='doas pkg update && doas pkg upgrade' \
	highlight='highlight -Oxterm256 -t4' \
	hi='highlight'
hil() {
	highlight -Oxterm256 -t4 "$1" | $PAGER
}
search() {
	make -C /usr/ports search name=$1 | grep 'Path:';
}
alias watch='cmdwatch' \
	tsd='transmission-daemon' \
	tsm='transmission-remote' \
	rsox='sox -t oss default' \
	pstree='dtpstree -U' \
	open='xdg-open' \
	speedtest='speedtest --bytes' \
	calcurse='calcurse -C $XDG_CONFIG_HOME/calcurse -D $XDG_DATA_HOME/calcurse' \
	abook='abook -C $XDG_CONFIG_HOME/abook/abookrc --datafile $XDG_DATA_HOME/abook/addressbook' \
	dosbox='dosbox -conf $XDG_CONFIG_HOME/dosbox/dosbox.conf' \
	gpg='gpg2' \
	mysql='mycli -u root -h' \
	wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
