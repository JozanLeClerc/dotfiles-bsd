" .vimrc 4.0 by Joe
"      _
"     | | ___   ___
"  _  | |/ _ \ / _ \
" | |_| | (_) |  __/
"  \___/ \___/ \___|
" 

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jreybert/vimagit'
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'ryanoasis/vim-devicons'
Plug 'brglng/vim-sidebar-manager'
Plug 'preservim/tagbar'
Plug 'vifm/vifm.vim'
Plug 'mhinz/vim-startify'
call plug#end()

let mapleader=","

" Some basics:
	set bg=dark
	set go=a
	set mouse=a
	set nohlsearch
	set clipboard=unnamedplus
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set nocompatible
	filetype plugin indent on
	set encoding=utf-8
	set number
	set ruler
	syntax on
	set hidden
	autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
	colorscheme gruvbox-material
	set wildmode=longest,list,full

" Some quick bindings
	nnoremap c "_c
	nnoremap <C-x>g :G<CR>
	nnoremap <M-;> :call NERDComment(0,"toggle")<CR>
	nnoremap <M-x> :
	nnoremap <M-1> :!
	nnoremap <silent> <M-k> :bprevious<CR>
	nnoremap <silent> <M-j> :bnext<CR>
	nnoremap <C-h> <C-w>h
	nnoremap <C-j> <C-w>j
	nnoremap <C-k> <C-w>k
	nnoremap <C-l> <C-w>l
	nnoremap <C-o> <C-w>o
	nnoremap <C-x>1 <C-w>o
	nnoremap <C-x>2 :vsp<CR>
	nnoremap <C-x>3 :sp<CR>
	nnoremap <C-x>0 <C-w>q
	nnoremap <C-x><C-f> :e<space>
	nnoremap <C-x><C-s> :w<CR>
	nnoremap <silent> <leader>w :w <BAR> :bp <BAR> :bd #<CR>
	nnoremap <silent> <C-x>k :w <BAR> :bp <BAR> :bd #<CR>
	nnoremap <F1> :sp<CR><C-w>j:term<CR>:resize -10<CR>i
	nnoremap <C-x>u :UndotreeToggle<CR>
	nmap <leader>1 <Plug>AirlineSelectTab1
	nmap <leader>2 <Plug>AirlineSelectTab2
	nmap <leader>3 <Plug>AirlineSelectTab3
	nmap <leader>4 <Plug>AirlineSelectTab4
	nmap <leader>5 <Plug>AirlineSelectTab5
	nmap <leader>6 <Plug>AirlineSelectTab6
	nmap <leader>7 <Plug>AirlineSelectTab7
	nmap <leader>8 <Plug>AirlineSelectTab8
	nmap <leader>9 <Plug>AirlineSelectTab9
	nmap <leader>0 <Plug>AirlineSelectTab10

" sidebars
	let g:NERDTreeWinPos = 'left'
	let g:NERDTreeWinSize = 40
	let g:NERDTreeQuitOnOpen = 0
	let g:tagbar_left = 1
	let g:tagbar_width = 40
	let g:tagbar_autoclose = 0
	let g:tagbar_autofocus = 1
	let g:undotree_SetFocusWhenToggle = 1
	let g:undotree_SplitWidth = 40
	
	let g:sidebars = {
			\ 'nerdtree': {
			\     'position': 'left',
			\     'check_win': {nr -> getwinvar(nr, '&filetype') ==# 'nerdtree'},
			\     'open': 'NERDTree',
			\     'close': 'NERDTreeClose'
			\ },
			\ 'tagbar': {
			\     'position': 'left',
			\     'check_win': {nr -> bufname(winbufnr(nr)) =~ '__Tagbar__'},
			\     'open': 'TagbarOpen',
			\     'close': 'TagbarClose'
			\ },
			\ 'undotree': {
			\     'position': 'left',
			\     'check_win': {nr -> getwinvar(nr, '&filetype') ==# 'undotree'},
			\     'open': 'UndotreeShow',
			\     'close': 'UndotreeHide'
			\ }
			\ }

	noremap <silent> <F2> :call sidebar#toggle('nerdtree')<CR>
	noremap <silent> <F3> :call sidebar#toggle('tagbar')<CR>
	noremap <silent> <F4> :call sidebar#toggle('undotree')<CR>
	let g:startify_session_before_save = ['call sidebar#close_all()']

" Startify
	let g:startify_padding_left = 90
	let g:startify_custom_header = startify#pad([
			\ '  _____________________________________ ',
			\ ' /                                     \',
			\ ' |    Hi, partner, welcome_back to     |',
			\ ' |  _ __   ___  _____   _(_)_ __ ___   |',
			\ ' | | ''_ \ / _ \/ _ \ \ / / | ''_ ` _ \  |',
			\ ' | | | | |  __/ (_) \ V /| | | | | | | |',
			\ ' | |_| |_|\___|\___/ \_/ |_|_| |_| |_| |',
			\ ' \                                     /',
			\ '  ------------------------------------- ',
			\ '         \   ^__^                       ',
			\ '          \  (oo)\_______               ',
			\ '             (__)\       )\/\           ',
			\ '                 ||----w |              ',
			\ '                 ||     ||              ',
			\ ])
	let g:startify_lists = [
		  \ { 'type': 'sessions',  'header': startify#pad(['Sessions'])	},
		  \ { 'type': 'files',     'header': startify#pad(['Recent'])		},
		  \ { 'type': 'bookmarks', 'header': startify#pad(['Bookmarks'])	},
		  \ { 'type': 'commands',  'header': startify#pad(['Commands'])	},
		  \ ]

" Airline
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#fnamemod = ':t'
	let g:airline_detect_modified = 1
	let g:airline_detect_paste = 1
	let g:airline_detect_crypt = 1
	let g:airline_theme = 'base16_gruvbox_dark_hard'
	let g:airline_powerline_fonts = 1
	let g:airline_symbols_ascii = 1
	let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

" Rainbow
	let g:rainbow_active = 1

" NERD Commenter
	let g:NERDSpaceDelims = 1
	let g:NERDCompactSexyComs = 1
	let g:NERDDefaultAlign = 'left'
	let g:NERDAltDelims_java = 1
	let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
	let g:NERDCommentEmptyLines = 1
	let g:NERDTrimTrailingWhitespace = 1
	let g:NERDToggleCheckAllLines = 1

" Cursor mode
	let g:airline#extensions#cursormode#enabled = 1
	let g:cursormode_color_map = {
	\	"i": 		"#d79921",
	\	"n": 		"#d79921",
	\	"R": 		"#cc241d",
	\	"r": 		"#cc241d",
	\	"v": 		"#b06597",
	\	"V": 		"#b06597",
	\	"\<C-V>":	"#b06597",
	\}

" 10 buffers jump
	let g:airline#extensions#tabline#buffer_idx_mode = 1

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
