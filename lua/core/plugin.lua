require('packer').startup(function(use)
	-- Packer
	use 'wbthomason/packer.nvim'
	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                          , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- Treesitter
	use 'nvim-treesitter/nvim-treesitter'
	-- Flutter
	use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}
	-- LSP zero
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional
			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}
	-- Colorizer
	use 'NvChad/nvim-colorizer.lua'
	-- Theme
	use 'IamHARSHDABAS/SweetifyNeoVim'
end)
