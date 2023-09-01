vim.opt.autochdir = false
vim.opt.bg = 'dark'
vim.opt.cindent = true
vim.cmd [[
set cinoptions=>s,e0,n0,f0,{0,}0,^0,L-1,:s,=s,l1,b0,gs,h0,N0,E0,p0,t0,i0,+s
set cinoptions+=c1,C0,/0,(s,us,U0,w1,Ws,k0,m0,M1,)20,*70,#0
set clipboard^=unnamedplus
set path+=**
set shortmess+=c
]]
vim.opt.completeopt = 'menuone,noinsert,noselect,preview'
vim.opt.cursorline = true
vim.opt.encoding = 'utf-8'
vim.opt.go = 'a'
vim.opt.hidden = true
vim.opt.makeprg = 'make'
vim.opt.mouse = 'a'
vim.opt.compatible = false
vim.opt.expandtab = false
vim.opt.hlsearch = false
vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.ruler = true
vim.opt.tabstop = 4
vim.opt.textwidth = 80
vim.opt.timeoutlen = 500
vim.opt.undodir = '/tmp/nvim_undo'
vim.opt.undofile = true
vim.opt.wildmode = 'longest,list,full'
vim.opt.directory = '/tmp/nvim_swap'
vim.opt.wrap = true
vim.opt.textwidth = 0
vim.cmd [[
syntax on
filetype plugin indent on
colorscheme gruvbox-material
highlight Normal ctermbg=none guibg=none
highlight NonText ctermbg=none guibg=none
highlight LineNr ctermbg=none guibg=none
highlight EndOfBuffer ctermbg=none guibg=none
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]]
vim.g.mapleader = '\\'
vim.g.maplocalleader = '\\'
vim.g['battery#update_statusline'] = 1