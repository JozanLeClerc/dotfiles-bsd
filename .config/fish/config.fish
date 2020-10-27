set -x PATH $HOME/.local/bin /usr/local/llvm11/bin $PATH; export PATH

export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export FILE="vifm"
export MPD_HOST="$HOME/.mpd/socket"
export LANG="en_US.UTF-8"
export LESSHISTFILE="-"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_MUSIC_DIR="$HOME/Music"
export CCACHE_PATH="/usr/bin:/usr/local/bin:/usr/local/llvm11/bin"
export CCACHE_DIR="/var/cache/ccache-jozan"
export CCACHE_LOGFILE="/var/log/ccache.log"
export RUSTFLAGS="-L /usr/local/lib"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
set -x LESS "-R"; export LESS
set -x MANPAGER "less -M +Gg"
# export LESS_TERMCAP_mb="\033[1;32m"
# export LESS_TERMCAP_md="\033[1;32m"
# export LESS_TERMCAP_me="\033[0m"
# export LESS_TERMCAP_se="\033[0m"
# export LESS_TERMCAP_so="\033[01;33m"
# export LESS_TERMCAP_ue="\033[0m"
# export LESS_TERMCAP_us="\033[1;4;31m"


source $HOME/.config/fish/alias.fish

fish_vi_key_bindings
set fish_greeting
function fish_mode_prompt
end

function fish_prompt
	printf "\033[1;31m%s \033[1;34m%s\033[1;31m> \033[0m" (prompt_hostname) (prompt_pwd)
end
function fish_right_prompt
	set -l last_pipestatus $pipestatus
	set -l last_status $status
	set -l prompt_status (__fish_print_pipestatus " " "" "|" (set_color $fish_color_status) (set_color --bold $fish_color_status) $last_pipestatus)
	printf "%s \033[1;31m%s\033[0m" (fish_vcs_prompt) $prompt_status
end
