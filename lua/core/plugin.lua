local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
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
	-- TODO
	-- -- Fuzzy finder
	-- use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	if packer_bootstrap then
		require('packer').sync()
	end
end)
