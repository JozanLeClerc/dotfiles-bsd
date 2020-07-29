# $FreeBSD: releng/12.1/share/skel/dot.profile 337497 2018-08-08 19:24:20Z asomers $
#
# .profile - Bourne Shell startup script for login shells
#
# see also sh(1), environ(7).
#


# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin; export PATH
# BLOCKSIZE=K;	export BLOCKSIZE

# Setting TERM is normally done through /etc/ttys.  Do only override
# if you're sure that you'll never log in via telnet or xterm or a
# serial line.
# TERM=xterm; 	export TERM

# set ENV to a file invoked each time sh is started for interactive use.
ENV=$HOME/.shrc; export ENV

# Path
export PATH="${HOME}/.local/bin:${HOME}/.cargo/bin:/usr/local/llvm10/bin:${PATH}"

# Apps
# export ZSH="/home/jozan/.oh-my-zsh"
export EDITOR="emacsclient -c"
export VISUAL="emacsclient -c -a emacs"
export PAGER="less"
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export FILE="vifm"
export MPD_HOST="${HOME}/.mpd/socket"

# UTF-8
export LANG="en_US.UTF-8"

# Cleanup
export LESSHISTFILE="-"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"

# ccache
export CCACHE_PATH="/usr/bin:/usr/local/bin:/usr/local/llvm10/bin"
export CCACHE_DIR="/var/cache/ccache-jozan"
export CCACHE_LOGFILE="/var/log/ccache.log"

# rust
export RUSTFLAGS="-L /usr/local/lib"

# Query terminal size; useful for serial lines.
# if [ -x /usr/bin/resizewin ] ; then /usr/bin/resizewin -z ; fi

# Display a random cookie on each login.
# if [ -x /usr/bin/fortune ] ; then /usr/bin/fortune freebsd-tips ; fi
