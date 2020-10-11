alias ls='exa -l'
alias c='clear'
alias less='less --tabs 4'
alias bc='clear; bc -l'
alias emacs='emacs -nw'
alias mkf='gmake fclean'
alias mkc='gmake clean'
alias mk='gmake -j5'
alias web='w3m https://duckduckgo.com/'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -v'
alias ln='ln -v'
alias mkdir='mkdir -v'
alias rmdir='rmdir -v'
alias chmod='chmod -v'
alias chown='chown -v'
alias grep='grep --color'
alias diff='colordiff'
alias tree='tree -C'
alias yt='straw-viewer'
alias gyt='gtk-straw-viewer'
alias dgit='git --git-dir=$HOME/Documents/dotfiles-bsd --work-tree=$HOME'
alias vim='nvim'
alias gst='git status'
alias ga='git add'
alias gco='git commit -m'
alias gpp='git push'
alias gpo='git push origin'
alias startdocker='sudo service vboxnet restart && docker-machine start docker-home'
alias stopdocker='docker-machine stop docker-home'
alias envdocker='eval `docker-machine env docker-home`'
