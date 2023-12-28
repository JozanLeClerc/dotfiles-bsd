vim.cmd.packadd('packer.nvim')

return require('packer').startup({function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		'windwp/nvim-autopairs',
		config = function() require('nvim-autopairs').setup {} end
	}
	use 'jiangmiao/auto-pairs'
	use 'folke/which-key.nvim'
	use 'mhinz/vim-signify'
	use 'mhinz/vim-startify'
	use 'morhetz/gruvbox'
	use 'mg979/vim-visual-multi'
	use 'preservim/tagbar'
	-- use 'preservim/nerdcommenter'
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {'nvim-tree/nvim-web-devicons'}
	}
	use 'mbbill/undotree'
	-- use 'brglng/vim-sidebar-manager'
	use 'sainnhe/gruvbox-material'
	use 'tpope/vim-fugitive'
	use({
		"kylechui/nvim-surround",
		requires = {
			{'nvim-treesitter/nvim-treesitter'},
			{'nvim-treesitter/nvim-treesitter-textobjects'},
		},
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	})
	-- use 'tpope/vim-surround'
	use 'nvim-lualine/lualine.nvim'
	use 'voldikss/vim-floaterm'
	use 'chrisbra/csv.vim'
	use {
		'ThePrimeagen/harpoon',
		branch = 'harpoon2',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'HiPhish/rainbow-delimiters.nvim'
	use {
		'nvim-treesitter/nvim-treesitter-textobjects',
		requires = { {'nvim-treesitter/nvim-treesitter'} },
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,}
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}
	use({
		'folke/trouble.nvim',
		requires = {
			{'nvim-tree/nvim-web-devicons'},
		},
		config = function()
			require('trouble').setup {
				icons = true,
			}
		end,
	})
	use {
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			require('ibl').setup()
		end,
	}
	use {
		'folke/todo-comments.nvim',
		requires = { {'nvim-lua/plenary.nvim'} },
		config = function()
			require('todo-comments.config').setup {}
			require('todo-comments')
		end
	}
	use 'onsails/lspkind.nvim'
end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})
