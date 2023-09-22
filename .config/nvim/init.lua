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
vim.cmd('source ' .. confdir .. '/nvim/plug-config/vim-lsp.vim')
