-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use ('wbthomason/packer.nvim')
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'}, { 'BurntSushi/ripgrep' } }
	}
	use ('luisiacc/gruvbox-baby')
	use ( 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } )
	use ('theprimeagen/harpoon')
	-- use ('mbill/undotree')
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
	-- use ('lukas-reineke/indent-blankline.nvim')
	use ('morhetz/gruvbox')
	use { 
		'lervag/vimtex',
		opt = false,
		config = function ()
			vim.g.vimtex_view_general_viewer = 'okular'
			vim.g.tex_comment_nospell = 1
			vim.g.vimtex_compiler_progname = 'nvr'
			vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
			vim.g.vimtex_view_general_options_latexmk = '--unique'
		end,
		ft = 'tex'
	}
	use ({
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!:).
		run = "make install_jsregexp"
	})
	use ('SirVer/ultisnips')
	use ('honza/vim-snippets')
	use ('navarasu/onedark.nvim')
	use ('tpope/vim-surround')
end)

-- TODO: install and setup undotree
