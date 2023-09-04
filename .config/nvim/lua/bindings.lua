vim.call('which_key#register', '\\', 'g:which_key_map')
vim.g.which_key_map = {}
vim.keymap.set('n', 'c', '"_c', { noremap = true, silent = false })
vim.keymap.set('n', 'M-;', ':call nerdcommenter#Comment(0,"toggle")<CR>', { noremap = true, silent = false })
vim.keymap.set('n', 'M-x', ':', { noremap = true, silent = false })
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
vim.keymap.set('n', '<leader>', ":WhichKey '\\'<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>b', ':Buffers<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>d', ':bd<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>e', ':Files<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ga', ':Ag<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gg', ':Grep<Space>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>gr', ':Rg<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>G', ':FloatermNew lazygit<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>h', ':Startify<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>k', ':w<CR>:bp<CR>:bd #<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>p', ':<C-u>CocList -A --normal yank<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<silent><leader>v', ':FloatermNew vifm<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>x', ':w<CR>:bp<CR>:bd #<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<M-1>', '<Plug>AirlineSelectTab1')
vim.keymap.set('n', '<M-2>', '<Plug>AirlineSelectTab2')
vim.keymap.set('n', '<M-3>', '<Plug>AirlineSelectTab3')
vim.keymap.set('n', '<M-4>', '<Plug>AirlineSelectTab4')
vim.keymap.set('n', '<M-5>', '<Plug>AirlineSelectTab5')
vim.keymap.set('n', '<M-6>', '<Plug>AirlineSelectTab6')
vim.keymap.set('n', '<M-7>', '<Plug>AirlineSelectTab7')
vim.keymap.set('n', '<M-8>', '<Plug>AirlineSelectTab8')
vim.keymap.set('n', '<M-9>', '<Plug>AirlineSelectTab9')
vim.keymap.set('n', '<M-0>', '<Plug>AirlineSelectTab10')
vim.keymap.set('i', '<expr> <C-j>', 'pumvisible() ? "<C-n>" : "<C-j>"')
vim.keymap.set('i', '<expr> <C-k>', 'pumvisible() ? "<C-p>" : "<C-k>"')
vim.keymap.set('i', '<expr> <cr>',  'pumvisible() ? asyncomplete#close_popup() : "\\<cr>"')
vim.g.floaterm_keymap_toggle = '<F1>'
vim.g.floaterm_keymap_prev =   '<F11>'
vim.g.floaterm_keymap_next =   '<F12>'
vim.cmd [[
let g:which_key_map = {
\ 'b': 'buffers',
\ 'c': { 'name': '+nerd-commenter' },
\ 'd': 'close-buffer',
\ 'e': 'files',
\ 'G': 'lazygit',
\ 'h': 'startify',
\ 'k': 'write-and-close-buffer',
\ 'p': 'coc-paste',
\ 'q': { 'name': '+coc-fix-current' },
\ 'r': { 'name': '+coc-rename' },
\ 'v': 'vifm',
\ 'w': 'write-buffer',
\ 'x': 'write-and-close-buffer',
\ 'g': { 'name': '+grep' }
\ }
let g:which_key_map.g = {
\ 'a': 'the_silver_searcher',
\ 'g': 'grep',
\ 'r': 'ripgrep'
\ }
]]
