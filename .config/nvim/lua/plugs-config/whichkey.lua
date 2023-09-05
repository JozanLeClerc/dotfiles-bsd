
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
	u = { ':UndotreeShow<CR>', 'undotree', noremap = true, silent = true },
	v = { ':FloatermNew vifm<CR>', 'vifm', noremap = true, silent = true },
	w = { ':w<CR>', 'write buffer', noremap = true, silent = false },
	x = { ':w<CR>:bp<CR>:bd #<CR>', 'write and close buffer', noremap = true, silent = false },
	q = { name = '+coc-fix-current' },
	r = { name = '+coc-rename' },
	f = {
		name = 'telescope',
		f = { ':Telescope find_files<CR>', 'find files', noremap = true, silent = true },
	},
	g = {
		name = 'grep',
		a = { ':Ag<CR>', 'the_silver_searcher', noremap = true, silent = true },
		g = { ':Grep<CR>', 'grep', noremap = true, silent = true },
		r = { ':Rg<CR>', 'ripgrep', noremap = true, silent = true },
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
