local harpoon = require('harpoon')
harpoon:setup()

vim.keymap.set('n', '<M-1>', function() harpoon:list():select(1) end)
vim.keymap.set('n', '<M-2>', function() harpoon:list():select(2) end)
vim.keymap.set('n', '<M-3>', function() harpoon:list():select(3) end)
vim.keymap.set('n', '<M-4>', function() harpoon:list():select(4) end)

local ts = require('telescope.builtin')
require('telescope').load_extension('harpoon')
local wk = require('which-key')
wk.register({
	a = {
		name = 'harpoon',
		a = { function() harpoon:list():append() end, 'add file', noremap = true, silent = true },
		e = { function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, 'harpoon ui', noremap = true, silent = true },
		f = { ':Telescope harpoon marks<CR>', 'harpoon telescope ui', noremap = true, silent = true },
	},
	b = { ':Buffers<CR>', 'buffers', noremap = true, silent = true },
	c = { name = '+nerd-commenter' },
	d = { ':bd<CR>', 'close buffer', noremap = true, silent = true },
	D = { '"-ddk:put = strftime(\' * %c\')<CR>', 'insert date', noremap = true, silent = true },
	e = { ':Telescope find_files<CR>', 'find files', noremap = true, silent = true },
	G = { ':FloatermNew lazygit<CR>', 'lazygit', noremap = true, silent = true },
	h = { ':Startify<CR>', 'startify', noremap = true, silent = true },
	k = { ':w<CR>:bp<CR>:bd #<CR>', 'write and close buffer', noremap = true, silent = false },
	u = { vim.cmd.UndotreeToggle, 'undotree', noremap = true, silent = true },
	v = { ':FloatermNew vifm<CR>', 'vifm', noremap = true, silent = true },
	w = { ':w<CR>', 'write buffer', noremap = true, silent = false },
	x = { ':w<CR>:bp<CR>:bd #<CR>', 'write and close buffer', noremap = true, silent = false },
	f = {
		name = 'telescope',
		e = { ':Telescope harpoon marks<CR>', 'harpoon marks', noremap = true, silent = true },
		f = { ts.find_files, 'find files', noremap = true, silent = true },
		g = { ts.git_files, 'git files', noremap = true, silent = true },
		s = { function()
			ts.grep_string({ search = vim.fn.input("Grep > ") })
		end, 'grep string', noremap = true, silent = true },
	},
	g = {
		name = 'git',
		g = { vim.cmd.Git, 'git' },
		-- a = { ':Ag<CR>', 'the_silver_searcher', noremap = true, silent = true },
		-- g = { ':Grep<CR>', 'grep', noremap = true, silent = true },
		-- r = { ':Rg<CR>', 'ripgrep', noremap = true, silent = true },
	},
	v = {
		name = 'nvim',
		v = { vim.cmd.Ex, 'explorer', noremap = true, silent = true },
		u = { ':PlugUpgrade<CR>:PlugUpdate<CR>', 'upgrade', noremap = true, silent = true },
	},
}, { prefix = '<leader>', })
wk.setup({
	plugins = {
		presets = {
			operators = false,
			motions = false,
			text_objects = false,
			window = false,
			nav = false,
			z = false,
			g = false
		},
	},
	triggers = { "<leader>" },
	triggers_nowait = { "d" },
})

vim.keymap.set('n', '<C-p>', ts.git_files)
