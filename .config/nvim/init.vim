" init.vim
" ========================
" =====    ===============
" ======  ================
" ======  ================
" ======  ====   ====   ==
" ======  ===     ==  =  =
" ======  ===  =  ==     =
" =  ===  ===  =  ==  ====
" =  ===  ===  =  ==  =  =
" ==     =====   ====   ==
" ========================

set runtimepath^=/home/r_bousset/.config/nvim runtimepath+=/home/jozan/.config/nvim/after
let &packpath = &runtimepath
if ! filereadable(system('echo -n "$XDG_DATA_HOME/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p $XDG_DATA_HOME/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > $XDG_DATA_HOME/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif
source $XDG_CONFIG_HOME/nvim/plug.vim
source $XDG_CONFIG_HOME/nvim/settings.vim
source $XDG_CONFIG_HOME/nvim/bindings.vim
source $XDG_CONFIG_HOME/nvim/sidebars.vim
source $XDG_CONFIG_HOME/nvim/langs.vim
"source $XDG_CONFIG_HOME/nvim/plug-config/airline.vim
source $XDG_CONFIG_HOME/nvim/plug-config/lightline.vim
source $XDG_CONFIG_HOME/nvim/plug-config/asyncomplete.vim
source $XDG_CONFIG_HOME/nvim/plug-config/floaterm.vim
source $XDG_CONFIG_HOME/nvim/plug-config/nerd-commenter.vim
source $XDG_CONFIG_HOME/nvim/plug-config/org.vim
source $XDG_CONFIG_HOME/nvim/plug-config/quickscope.vim
source $XDG_CONFIG_HOME/nvim/plug-config/rainbow.vim
source $XDG_CONFIG_HOME/nvim/plug-config/startify.vim
source $XDG_CONFIG_HOME/nvim/plug-config/signify.vim
source $XDG_CONFIG_HOME/nvim/plug-config/vim-lsp.vim
