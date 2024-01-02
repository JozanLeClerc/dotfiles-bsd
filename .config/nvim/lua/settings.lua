vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.autochdir = false
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
-- vim.opt.go = 'a'
vim.opt.hidden = true
vim.opt.makeprg = 'make'
vim.opt.mouse = 'a'
vim.opt.compatible = false
vim.opt.expandtab = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.ruler = true
vim.opt.tabstop = 4
vim.opt.textwidth = 0
vim.opt.timeoutlen = 0
vim.opt.timeoutlen = 250
vim.opt.undodir = '/tmp/nvim_undo'
vim.opt.undofile = true
vim.opt.wildmode = 'longest,list,full'
vim.opt.directory = '/tmp/nvim_swap'
vim.opt.colorcolumn = "80"
vim.opt.scrolloff = 5
vim.opt.signcolumn = "yes"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.opt.wrap = true
vim.opt.termguicolors = true
vim.opt.bg = 'dark'
vim.g.gruvbox_material_background = 'medium'
vim.g.gruvbox_material_foreground = 'mix'
vim.g.gruvbox_material_better_performance = 1
vim.cmd [[
syntax on

set t_Co=256
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme deus
let g:deus_termcolors=256
"colorscheme gruvbox

filetype plugin indent on
highlight Normal ctermbg=none guibg=none
highlight NonText ctermbg=none guibg=none
highlight LineNr ctermbg=none guibg=none
highlight EndOfBuffer ctermbg=none guibg=none
" highlight DiagnosticVirtualTextError guifg='#f25942'
" highlight DiagnosticVirtualTextWarn  guifg='#e9b143'
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]]
vim.g.mapleader = '\\'
vim.g.maplocalleader = '\\'
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
