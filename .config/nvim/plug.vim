call plug#begin(system('echo -n "$XDG_DATA_HOME/nvim/plugged"'))
Plug 'brglng/vim-sidebar-manager'
Plug 'dag/vim-fish'
Plug 'honza/vim-snippets'
Plug 'jceb/vim-orgmode'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/vim-which-key'
Plug 'luochen1990/rainbow'
Plug 'mbbill/undotree'
Plug 'mg979/vim-visual-multi'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'paretje/nvim-man'
Plug 'preservim/tagbar'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'sainnhe/gruvbox-material'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'unblevable/quick-scope'
Plug 'vifm/vifm.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/grep.vim'
Plug 'voldikss/fzf-floaterm'
Plug 'voldikss/vim-floaterm'
call plug#end()
