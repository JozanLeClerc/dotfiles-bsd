-- init.lua
-- ========================
-- =====    ===============
-- ======  ================
-- ======  ================
-- ======  ====   ====   ==
-- ======  ===     ==  =  =
-- ======  ===  =  ==     =
-- =  ===  ===  =  ==  ====
-- =  ===  ===  =  ==  =  =
-- ==     =====   ====   ==
-- ========================

confdir = os.getenv('XDG_CONFIG_HOME')

vim.cmd('set runtimepath^=/home/r_bousset/.config/nvim runtimepath+=/home/jozan/.config/nvim/after')
vim.cmd('let &packpath = &runtimepath')
require('plug')
require('settings')
require('bindings')
require('sidebars')
require('langs')
require('plugs-config/asyncomplete')
require('plugs-config/floaterm')
require('plugs-config/lualine')
require('plugs-config/treesitter')
require('plugs-config/whichkey')
require('plugs-config/nerd-commenter')
require('plugs-config/org')
require('plugs-config/quickscope')
require('plugs-config/rainbow')
require('plugs-config/startify')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/signify.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/vim-lsp.vim')
