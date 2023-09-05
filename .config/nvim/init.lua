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
require('plugs-config/treesitter')
require('plugs-config/asyncomplete')
require('plugs-config/floaterm')
require('plugs-config/lualine')
-- vim.cmd('source ' .. confdir .. '/nvim/plug-config/airline.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/nerd-commenter.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/org.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/quickscope.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/rainbow.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/startify.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/signify.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/vim-lsp.vim')
