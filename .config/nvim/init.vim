" init.vim 4.0 by Joe
"      _
"     | | ___   ___
"  _  | |/ _ \ / _ \
" | |_| | (_) |  __/
"  \___/ \___/ \___|
"

set runtimepath^=/home/jozan/.config/nvim runtimepath+=/home/jozan/.config/nvim/after
let &packpath = &runtimepath
source /home/jozan/.config/nvim/plug.vim
source /home/jozan/.config/nvim/settings.vim
source /home/jozan/.config/nvim/bindings.vim
source /home/jozan/.config/nvim/sidebars.vim
source /home/jozan/.config/nvim/plugins.vim
source /home/jozan/.config/nvim/langs.vim
source /home/jozan/.config/nvim/plug-config/coc.vim
