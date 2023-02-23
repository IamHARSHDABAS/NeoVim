require('packer').startup(function(use)
	-- packer
	use 'wbthomason/packer.nvim'
	-- nvim tree
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'
	-- lua line
	use 'nvim-lualine/lualine.nvim'
	--  Comment
	use 'numToStr/Comment.nvim'
	-- Lsp
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	-- Treesitter
	use 'nvim-treesitter/nvim-treesitter'
	-- Telescope
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-lua/plenary.nvim'
end)
