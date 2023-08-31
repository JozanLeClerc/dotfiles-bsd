" Startify
let g:startify_custom_header = startify#pad([
			\ '  _____________________________________ ',
			\ ' /                                     \',
			\ ' |    Hi, partner, welcome_back to     |',
			\ ' |  _ __   ___  _____   _(_)_ __ ___   |',
			\ ' | | ''_ \ / _ \/ _ \ \ / / | ''_ ` _ \  |',
			\ ' | | | | |  __/ (_) \ V /| | | | | | | |',
			\ ' | |_| |_|\___|\___/ \_/ |_|_| |_| |_| |',
			\ ' \                                     /',
			\ '  ------------------------------------- ',
			\ '         \   ^__^                       ',
			\ '          \  (oo)\_______               ',
			\ '             (__)\       )\/\           ',
			\ '                 ||----w |              ',
			\ '                 ||     ||              ',
			\ ])
let g:startify_lists = [
			\ { 'type': 'sessions',  'header': startify#pad(['Sessions'])	},
			\ { 'type': 'files',     'header': startify#pad(['Recent'])		},
			\ { 'type': 'bookmarks', 'header': startify#pad(['Bookmarks'])	},
			\ { 'type': 'commands',  'header': startify#pad(['Commands'])	},
			\ ]
let g:startify_bookmarks = [
			\ { 'env': '~/.config/env' },
			\ { 'v': '~/.config/nvim/init.vim' },
			\ { 'zc': '~/.config/zsh/.zshrc' },
			\ { 'za': '~/.config/zsh/alias.zsh' },
			\ { 'gj': '~/dev/go/gojosh' },
			\ ]
