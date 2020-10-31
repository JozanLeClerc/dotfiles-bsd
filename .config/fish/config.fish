export LESS_TERMCAP_mb=(printf '\e[1;31m')
export LESS_TERMCAP_md=(printf '\e[1;31m')
export LESS_TERMCAP_me=(printf '\e[0m')
export LESS_TERMCAP_se=(printf '\e[0m')
export LESS_TERMCAP_so=(printf '\e[1;33;40m')
export LESS_TERMCAP_ue=(printf '\e[0m')
export LESS_TERMCAP_us=(printf '\e[0;4;35m')

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
