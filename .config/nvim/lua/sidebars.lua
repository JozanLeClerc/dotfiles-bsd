vim.g.NERDTreeWinPos = 'left'
vim.g.NERDTreeWinSize = 30
vim.g.NERDTreeQuitOnOpen = 0
vim.g.tagbar_left = 1
vim.g.tagbar_width = 30
vim.g.tagbar_autoclose = 0
vim.g.tagbar_autofocus = 1
vim.g.tagbar_sort = 0
vim.g.undotree_SetFocusWhenToggle = 1
vim.g.undotree_SplitWidth = 30

vim.cmd [[
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
let g:startify_session_before_save = ['call sidebar#close_all()']
]]

vim.keymap.set('n', '<F2>', ':call sidebar#toggle("nerdtree")<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<F4>', ':make<space>-j5<space>', { noremap = true, silent = false })
vim.keymap.set('n', '<F3>', ':call sidebar#toggle("tagbar")<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<F5>', ':call sidebar#toggle("undotree")<CR>', { noremap = true, silent = true })
