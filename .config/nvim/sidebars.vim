let g:NERDTreeWinPos = 'left'
let g:NERDTreeWinSize = 30
let g:NERDTreeQuitOnOpen = 0
let g:tagbar_left = 1
let g:tagbar_width = 30
let g:tagbar_autoclose = 0
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_SplitWidth = 30

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
noremap <F4> :make<space>-j5<space>
noremap <silent> <F3> :call sidebar#toggle('tagbar')<CR>
noremap <silent> <F5> :call sidebar#toggle('undotree')<CR>
let g:startify_session_before_save = ['call sidebar#close_all()']
