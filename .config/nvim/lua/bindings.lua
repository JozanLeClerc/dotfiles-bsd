local wk = require("which-key")
wk.register({
	b = { ':Buffers<CR>', 'buffers', noremap = true, silent = true },
	c = { name = '+nerd-commenter' },
	d = { ':bd<CR>', 'close buffer', noremap = true, silent = false },
	e = { ':Files<CR>', 'files', noremap = true, silent = true },
	G = { ':FloatermNew lazygit<CR>', 'lazygit', noremap = true, silent = true },
	h = { ':Startify<CR>', 'startify', noremap = true, silent = true },
	k = { ':w<CR>:bp<CR>:bd #<CR>', 'write and close buffer', noremap = true, silent = false },
	p = { ':<C-u>CocList -A --normal yank<CR>', 'CoC paste', noremap = true, silent = true },
	v = { ':FloatermNew vifm<CR>', 'vifm', noremap = true, silent = true },
	w = { ':w<CR>', 'write buffer', noremap = true, silent = false },
	x = { ':w<CR>:bp<CR>:bd #<CR>', 'write and close buffer', noremap = true, silent = false },
	q = { name = '+coc-fix-current' },
	r = { name = '+coc-rename' },
	g = {
		name = 'grep',
		a = { ':Ag<CR>', 'the_silver_searcher', noremap = true, silent = true },
		g = { ':Grep<CR>', 'grep', noremap = true, silent = true },
		r = { ':Rg<CR>', 'ripgrep', noremap = true, silent = true },
	},
}, { prefix = '<leader>' })

vim.keymap.set('n', 'M-;', ':call nerdcommenter#Comment(0,"toggle")<CR>', { noremap = true, silent = false })
vim.keymap.set('n', 'M-x', ':', { noremap = true, silent = false })
vim.keymap.set('n', '<M-k>', ':bprevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-j>', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = false })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = false })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = false })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = false })
vim.keymap.set('n', '<C-o>', '<C-w>o', { noremap = true, silent = false })
vim.keymap.set('n', '<C-q>', '<C-w>q', { noremap = true, silent = false })
vim.keymap.set('n', '*', '*zz', { noremap = true, silent = false })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = false })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = false })
vim.keymap.set('n', '<M-1>', '<Plug>AirlineSelectTab1')
vim.keymap.set('n', '<M-2>', '<Plug>AirlineSelectTab2')
vim.keymap.set('n', '<M-3>', '<Plug>AirlineSelectTab3')
vim.keymap.set('n', '<M-4>', '<Plug>AirlineSelectTab4')
vim.keymap.set('n', '<M-5>', '<Plug>AirlineSelectTab5')
vim.keymap.set('n', '<M-6>', '<Plug>AirlineSelectTab6')
vim.keymap.set('n', '<M-7>', '<Plug>AirlineSelectTab7')
vim.keymap.set('n', '<M-8>', '<Plug>AirlineSelectTab8')
vim.keymap.set('n', '<M-9>', '<Plug>AirlineSelectTab9')
vim.keymap.set('n', '<M-0>', '<Plug>AirlineSelectTab10')
vim.keymap.set('i', '<C-j>', 'pumvisible() ? "<C-n>" : "<C-j>"', { expr = true })
vim.keymap.set('i', '<C-k>', 'pumvisible() ? "<C-p>" : "<C-k>"', { expr = true })
vim.keymap.set('i', '<cr>',  'pumvisible() ? asyncomplete#close_popup() : "\\<cr>"', { expr = true })
vim.g.floaterm_keymap_toggle = '<F1>'
vim.g.floaterm_keymap_prev =   '<F11>'
vim.g.floaterm_keymap_next =   '<F12>'
