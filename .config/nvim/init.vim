" init.vim
"      _
"     | | ___   ___
"  _  | |/ _ \ / _ \
" | |_| | (_) |  __/
"  \___/ \___/ \___|
"

set runtimepath^=/home/jozan/.config/nvim runtimepath+=/home/jozan/.config/nvim/after
let &packpath = &runtimepath
if ! filereadable(system('echo -n "$XDG_DATA_HOME/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p $XDG_DATA_HOME/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > $XDG_DATA_HOME/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif
source /home/jozan/.config/nvim/plug.vim
source /home/jozan/.config/nvim/settings.vim
source /home/jozan/.config/nvim/bindings.vim
source /home/jozan/.config/nvim/sidebars.vim
source /home/jozan/.config/nvim/plugins.vim
source /home/jozan/.config/nvim/langs.vim
source /home/jozan/.config/nvim/plug-config/airline.vim
source /home/jozan/.config/nvim/plug-config/coc.vim
source /home/jozan/.config/nvim/plug-config/startify.vim
