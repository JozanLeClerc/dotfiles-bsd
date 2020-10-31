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

# PATH
export PATH="${HOME}/.local/bin:${PATH}"

# Apps
export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export FILE="vifm"

# UTF-8
export LANG="en_US.UTF-8"

# xdg
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_MUSIC_DIR="$HOME"/mu

# Cleanup
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export ANDROID_AVD_HOME="$XDG_DATA_HOME"/android/
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android/
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export MACHINE_STORAGE_PATH="$XDG_DATA_HOME"/docker-machine
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export LESSHISTFILE="-"

# ccache
export CCACHE_PATH="/usr/bin:/usr/local/bin:/usr/local/llvm11/bin"
export CCACHE_DIR="/var/cache/ccache-jozan"
export CCACHE_LOGFILE="/var/log/ccache.log"

# Apps config
export FZF_DEFAULT_COMMAND='ag -g "" --ignore dotfiles-bsd'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export LESS="-R"
export MANPAGER="less -R -M +Gg"
export MPD_HOST="${HOME}/.config/mpd/socket"
export RUSTFLAGS="-L /usr/local/lib"

# Query terminal size; useful for serial lines.
# if [ -x /usr/bin/resizewin ] ; then /usr/bin/resizewin -z ; fi

# Display a random cookie on each login.
# if [ -x /usr/bin/fortune ] ; then /usr/bin/fortune freebsd-tips ; fi
