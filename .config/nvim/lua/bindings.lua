vim.keymap.set('n', '<M-x>', ':', { noremap = true, silent = false })
vim.keymap.set('n', '<M-k>', ':bprevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.keymap.set('n', '<C-b>', '<C-b>zz', { noremap = true, silent = true })
vim.keymap.set('n', '<C-f>', '<C-f>zz', { noremap = true, silent = true })
vim.keymap.set('n', '<M-j>', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = false })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = false })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = false })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = false })
vim.keymap.set('n', '<C-o>', '<C-w>o', { noremap = true, silent = false })
vim.keymap.set('n', '<C-q>', '<C-w>q', { noremap = true, silent = false })
vim.keymap.set('n', '*', '*zz', { noremap = true, silent = false })
vim.keymap.set('i', '<C-j>', 'pumvisible() ? "<C-n>" : "<C-j>"', { expr = true })
vim.keymap.set('i', '<C-k>', 'pumvisible() ? "<C-p>" : "<C-k>"', { expr = true })
vim.keymap.set('i', '<CR>',  'pumvisible() ? asyncomplete#close_popup() : "\\<cr>"', { expr = true })
vim.keymap.set('n', '<F2>', vim.cmd.NvimTreeToggle, { noremap = true, silent = true })
vim.keymap.set('n', '<F4>', ':make<space>-j5<space>', { noremap = true, silent = false })
vim.keymap.set('n', '<F3>', vim.cmd.TroubleToggle, { noremap = true, silent = true })
vim.keymap.set('n', '<F5>', vim.cmd.UndotreeToggle, { noremap = true, silent = true })
vim.g.floaterm_keymap_toggle = '<F1>'
vim.g.floaterm_keymap_prev =   '<F11>'
vim.g.floaterm_keymap_next =   '<F12>'
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('x', '<leader>p', "\"_dP")
vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', '<leader><space>', vim.cmd.nohlsearch, { noremap = true, silent = true })

local ts = require('telescope.builtin')
require('telescope').load_extension('harpoon')
local harpoon = require('harpoon')
harpoon:setup()

vim.keymap.set('n', '<M-1>', function() harpoon:list():select(1) end)
vim.keymap.set('n', '<M-2>', function() harpoon:list():select(2) end)
vim.keymap.set('n', '<M-3>', function() harpoon:list():select(3) end)
vim.keymap.set('n', '<M-4>', function() harpoon:list():select(4) end)

-- normal
vim.keymap.set('n', '<leader>d', ':bn|:bd#<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>D', '"-ddk:put = strftime(\' * %a %b %d %T %Y\')<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>k',  ':w<CR>:bp<CR>:bd #<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>u',  vim.cmd.UndotreeToggle, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>u', ':w<CR>', { noremap = true, silent = true })
-- harpoon
vim.keymap.set('n', '<leader>aa', function() harpoon:list():add() end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ae', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>af', ':Telescope harpoon marks<CR>', { noremap = true, silent = true })
-- trouble
vim.keymap.set('n', '<leader>xx', vim.cmd.TroubleToggle, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>xw', ':TroubleToggle workspace_diagnostics<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>xd', ':TroubleToggle document_diagnostics<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>xl', ':TroubleToggle loclist<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>xq', ':TroubleToggle quickfix<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>xs', ':TroubleToggle lsp_references<CR>', { noremap = true, silent = true })
-- telescope
vim.keymap.set('n', '<leader>fb', ts.buffers, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fd', ts.diagnostics, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fe', ':Telescope harpoon marks<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ff', ts.find_files, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fs', ts.live_grep, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fg', function() ts.grep_string({ search = vim.fn.input("Grep > ") }) end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ft', ':TodoTelescope keywords=TODO,HACK,WARN,PERF,NOTE,TEST,FIX<CR>', { noremap = true, silent = true })
-- neovim
vim.keymap.set('n', '<leader>vu', vim.cmd.PackerSync, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>vv', vim.cmd.Ex, { noremap = true, silent = true })
