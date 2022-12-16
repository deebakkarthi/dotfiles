-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer can manage itself
	use "wbthomason/packer.nvim"
	use "gruvbox-community/gruvbox"
	-- Configurations for Nvim LSP
	use "neovim/nvim-lspconfig"
	-- Autocomplete
	use "hrsh7th/nvim-cmp"
	-- Completes from the curr buf
	use "hrsh7th/cmp-buffer"
	-- Completes filenames
	use "hrsh7th/cmp-path"
	-- For lua dev
	use "hrsh7th/cmp-nvim-lua"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-cmdline"

	use "saadparwaiz1/cmp_luasnip"

	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.0",
		-- or                            , branch = "0.1.x",
		requires = { {"nvim-lua/plenary.nvim"} }
	}

	use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
	use "nvim-treesitter/playground"
	use "mbbill/undotree"
	use "tpope/vim-fugitive"
end)

