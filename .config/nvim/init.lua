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
require('plugs-config/treesitter')
vim.cmd('source ' .. confdir .. '/nvim/sidebars.vim')
vim.cmd('source ' .. confdir .. '/nvim/langs.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/airline.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/asyncomplete.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/floaterm.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/nerd-commenter.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/org.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/quickscope.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/rainbow.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/startify.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/signify.vim')
vim.cmd('source ' .. confdir .. '/nvim/plug-config/vim-lsp.vim')
