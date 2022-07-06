return require('packer').startup(function(use)

	use 'lewis6991/impatient.nvim'
	use 'wbthomason/packer.nvim'

	-- Themes / colors
	use 'Shatur/neovim-ayu'
	use 'folke/tokyonight.nvim'
	use 'navarasu/onedark.nvim'

	-- StatusLine
	use 'nvim-lualine/lualine.nvim'

	-- File Manager
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		}
	}

	use 'alexghergh/nvim-tmux-navigation'

	use 'easymotion/vim-easymotion'

	-- Search
	use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' } } }

	-- guias ident
	use 'lukas-reineke/indent-blankline.nvim'

	use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }

	-- mejorar la sytax
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		requires = {
			'nvim-treesitter/playground',
			'nvim-treesitter/nvim-treesitter-refactor',
			'nvim-treesitter/nvim-treesitter-textobjects',
		}
	}

	-- Gits
	use {
		'lewis6991/gitsigns.nvim',
		config = function() require('gitsigns').setup() end
	}

	-- LSP and AUTOCOMPLETE
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- Soporte LSP
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/nvim-lsp-installer' },
			-- Autocompletado
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },
			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
		}
	}

	-- box Commeter
	use {
		'scrooloose/nerdcommenter',
		run = function() require("nerdcommenter").setup() end
	}

	-- prettier and format code
	use 'lukas-reineke/lsp-format.nvim'
	use 'editorconfig/editorconfig-vim'

	-- colors css and more
	use 'norcalli/nvim-colorizer.lua'

	-- Harpoon
	use 'ThePrimeagen/harpoon'


end)
