local Plug = vim.fn['plug#']

vim.call('plug#begin', os.getenv("XDG_DATA_HOME") .. '/nvim/plugged')

Plug('ap/vim-css-color')
Plug('brglng/vim-sidebar-manager')
Plug('dag/vim-fish')
Plug('jackguo380/vim-lsp-cxx-highlight')
Plug('jceb/vim-orgmode')
Plug('jiangmiao/auto-pairs')
Plug('junegunn/fzf')
Plug('junegunn/fzf.vim')
Plug('folke/which-key.nvim')
Plug('luochen1990/rainbow')
Plug('mbbill/undotree')
Plug('mg979/vim-visual-multi')
Plug('mhinz/vim-signify')
Plug('mhinz/vim-startify')
Plug('morhetz/gruvbox')
Plug('prabirshrestha/async.vim')
Plug('prabirshrestha/asyncomplete.vim')
Plug('keremc/asyncomplete-clang.vim')
Plug('prabirshrestha/vim-lsp')
Plug('preservim/tagbar')
Plug('preservim/nerdcommenter')
Plug('preservim/nerdtree')
Plug('ryanoasis/vim-devicons')
Plug('nvim-tree/nvim-web-devicons')
Plug('sainnhe/gruvbox-material')
Plug('tpope/vim-dispatch')
Plug('tpope/vim-fugitive')
Plug('tpope/vim-speeddating')
Plug('tpope/vim-surround')
Plug('unblevable/quick-scope')
Plug('vifm/vifm.vim')
-- Plug('vim-airline/vim-airline')
-- Plug('vim-airline/vim-airline-themes')
Plug('nvim-lualine/lualine.nvim')
Plug('vim-scripts/grep.vim')
Plug('voldikss/fzf-floaterm')
Plug('voldikss/vim-floaterm')
Plug('chrisbra/csv.vim')
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-lua/plenary.nvim')
Plug('ThePrimeagen/harpoon')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

vim.call('plug#end')
