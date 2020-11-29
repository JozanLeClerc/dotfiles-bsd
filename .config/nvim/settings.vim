set noautochdir
set bg=dark
set cindent
set cinoptions=>s,e0,n0,f0,{0,}0,^0,L-1,:s,=s,l1,b0,gs,h0,N0,E0,p0,t0,i0,+s
set cinoptions+=c1,C0,/0,(s,us,U0,w1,Ws,k0,m0,M1,)20,*70,#0
set clipboard^=unnamedplus
set completeopt=menuone,noinsert,noselect,preview
set cursorline
set encoding=utf-8
set go=a
set hidden
set makeprg=gmake
set mouse=a
set nocompatible
set noexpandtab
set nohlsearch
set number
set path+=**
set shiftwidth=4
set shortmess+=c
set softtabstop=4
set ruler
set tabstop=4
set textwidth=80
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
let g:battery#update_statusline = 1 " For statusline.
