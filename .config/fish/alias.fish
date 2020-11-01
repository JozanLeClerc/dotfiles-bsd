alias ls='exa -l'
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
alias df='df -h'
alias du='du -h'
alias mkdir='mkdir -v'
alias rmdir='rmdir -v'
alias chmod='chmod -v'
alias chown='chown -v'
alias grep='grep --color'
alias diff='colordiff'
alias tree='tree -C'
alias yt='straw-viewer --api=auto'
alias gyt='gtk-straw-viewer'
alias dgit="git --git-dir=$HOME/docs/dotfiles-bsd --work-tree=$HOME"
alias vim='nvim'
alias gst='git status'
alias ga='git add'
alias gco='git commit -m'
alias gpp='git push'
alias gpo='git push origin'
alias startdocker='sudo service vboxnet restart && docker-machine start docker-home'
alias stopdocker='docker-machine stop docker-home'
alias envdocker='eval `docker-machine env docker-home`'
alias vimz='nvim (fzf)'
alias v='nvim (fzf)'
alias pa="cd $XDG_DATA_HOME/packs && ls"
alias co="cd $XDG_CONFIG_HOME/ && ls"
alias bi="cd $HOME/.local/bin && ls"
function twi
	mpv --really-quiet https://twitch.tv/$argv;
end
alias nb='newsboat'
alias mutt='neomutt'
alias nmt='neomutt'
alias sxiv='sxiv -b'
alias pinfo='pkg info -x'
function search
	make -C /usr/ports search name=$argv | grep 'Path:';
end
alias watch='cmdwatch'
alias tsd='transmission-daemon'
alias tsm='transmission-remote'
alias rsox='sox -t oss default'
alias calcurse="calcurse -C $XDG_CONFIG_HOME/calcurse -D $XDG_DATA_HOME/calcurse"
alias abook="abook -C $XDG_CONFIG_HOME/abook/abookrc --datafile $XDG_DATA_HOME/abook/addressbook"
alias dosbox="dosbox -conf $XDG_CONFIG_HOME/dosbox/dosbox.conf"
alias svn="svn --config-dir $XDG_CONFIG_HOME/subversion"
alias gpg2="gpg2 --homedir $XDG_DATA_HOME/gnupg"
alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"
