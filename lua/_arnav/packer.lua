-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'}, { 'BurntSushi/ripgrep' } }
	}
	use 'luisiacc/gruvbox-baby'
	use ( 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } )
	use ('theprimeagen/harpoon')
	use ('mbill/undotree')
	use ('tpope/vim-fugitive')
	use ('lewis6991/gitsigns.nvim')
	use {
		'feline-nvim/feline.nvim', brance = '0.5-compat',
		requires = { {'kyazdani42/nvim-web-devicons'} }
	}
	use ('tpope/vim-commentary')
	use ('jiangmiao/auto-pairs')
	use ('folke/todo-comments.nvim')
	use ('nvim-lualine/lualine.nvim')
	use {'neoclide/coc.nvim', branch = 'release'}
	use ('kassio/neoterm')
	use ('MunifTanjim/nui.nvim')
	use ('lukas-reineke/indent-blankline.nvim')
	use ('morhetz/gruvbox')
end)

-- TODO: install and setup undotree
