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

vim.g.sidebars = {
			'nerdtree': {
			    'position': 'left',
			    'check_win': {nr -> getwinvar(nr, '&filetype') ==# 'nerdtree'},
			    'open': 'NERDTree',
			    'close': 'NERDTreeClose'
			},
			'tagbar': {
			    'position': 'left',
			    'check_win': {nr -> bufname(winbufnr(nr)) =~ '__Tagbar__'},
			    'open': 'TagbarOpen',
			    'close': 'TagbarClose'
			},
			'undotree': {
			    'position': 'left',
			    'check_win': {nr -> getwinvar(nr, '&filetype') ==# 'undotree'},
			    'open': 'UndotreeShow',
			    'close': 'UndotreeHide'
			}
			}











