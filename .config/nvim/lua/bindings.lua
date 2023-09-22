vim.keymap.set('n', '<M-;>', ':call nerdcommenter#Comment(0,"toggle")<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<M-x>', ':', { noremap = true, silent = false })
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
vim.keymap.set('i', '<C-j>', 'pumvisible() ? "<C-n>" : "<C-j>"', { expr = true })
vim.keymap.set('i', '<C-k>', 'pumvisible() ? "<C-p>" : "<C-k>"', { expr = true })
vim.keymap.set('i', '<cr>',  'pumvisible() ? asyncomplete#close_popup() : "\\<cr>"', { expr = true })
vim.g.floaterm_keymap_toggle = '<F1>'
vim.g.floaterm_keymap_prev =   '<F11>'
vim.g.floaterm_keymap_next =   '<F12>'
