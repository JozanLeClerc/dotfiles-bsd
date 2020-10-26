set bg=dark
set clipboard^=unnamedplus
set cursorline
set encoding=utf-8
set go=a
set hidden
set makeprg=gmake
set mouse=a
set nocompatible
set nohlsearch
set number
set shiftwidth=4
set shortmess+=c
set softtabstop=4
set ruler
set tabstop=4
set timeoutlen=500
set undodir=/tmp
set undofile
set wildmode=longest,list,full
syntax on
filetype plugin indent on
" autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
colorscheme gruvbox-material
highlight Normal ctermbg=none guibg=none
highlight NonText ctermbg=none guibg=none
highlight LineNr ctermbg=none guibg=none
highlight EndOfBuffer ctermbg=none guibg=none
let mapleader="\\"
let maplocalleader="\\"
" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
