-- Startify
vim.cmd [[
let g:startify_custom_header = startify#pad([
\ '========================',
\ '=====    ===============',
\ '======  ================',
\ '======  ================',
\ '======  ====   ====   ==',
\ '======  ===     ==  =  =',
\ '======  ===  =  ==     =',
\ '=  ===  ===  =  ==  ====',
\ '=  ===  ===  =  ==  =  =',
\ '==     =====   ====   ==',
\ '========================',
\ ])
let g:startify_lists = [
            \ { 'type': 'sessions',  'header': startify#pad(['Sessions'])	},
            \ { 'type': 'files',     'header': startify#pad(['Recent'])		},
            \ { 'type': 'bookmarks', 'header': startify#pad(['Bookmarks'])	},
            \ { 'type': 'commands',  'header': startify#pad(['Commands'])	},
            \ ]
]]
vim.g.startify_bookmarks = {
	{ env = '~/.config/env' },
	{ v   = '~/.config/nvim/init.vim' },
	{ zc  = '~/.config/zsh/.zshrc' },
	{ za  = '~/.config/zsh/alias.zsh' },
	{ gj  = '~/dev/go/gojosh' },
}