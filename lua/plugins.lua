local M = {}

function M.setup()
	local packer_bootstrap = false

	-- Configure
	local conf = {
		profile = {
			enable = true,
			threshold = 0,
		},

		display = {
			open_fn = function()
				return require('packer.util').float { border = "rounded" }
			end,
		},
	}

	-- Check if packer.nvim is installed
	-- Run PackerCompile if there are changes in this file
	local function packer_init()
		local fn = vim.fn
		local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
		if fn.empty(fn.glob(install_path)) > 0 then
			packer_bootstrap = fn.system {
				"git",
				"clone",
				"--depth",
				"1",
				"https://github.com/wbthomason/packer.nvim",
				install_path,
			}
			vim.cmd [[packadd packer.nvim]]
		end

		vim.cmd([[
			augroup packer_user_config
				autocmd!
				autocmd BufWritePost plugins.lua source <afile> | PackerCompile
			augroup end
		]])

	end

	local function plugins(use)
		use "wbthomason/packer.nvim"
		use "stevearc/dressing.nvim"

		-- Packages
		use "tpope/vim-fugitive"
		use "tpope/vim-commentary"
		use "tpope/vim-surround"
		use {
			"akinsho/nvim-bufferline.lua",
			event = "BufReadPre",
			wants = "nvim-web-devicons",
			config = function()
				require("config.bufferline").setup()
			end,
		}
		use {
			"kyazdani42/nvim-web-devicons",
			module = "nvim-web-devicons",
			config = function()
				require("nvim-web-devicons").setup { default = true }
			end,
		}
		use "jeetsukumaran/vim-buffergator"
		use "lewis6991/gitsigns.nvim"

		use {
			'neovim/nvim-lspconfig',
			config = function()
				require("config.lspconfig").setup()
			end
		}

		use 'onsails/lspkind-nvim'
		use 'hrsh7th/cmp-nvim-lsp'
		use 'hrsh7th/cmp-buffer'
		use 'hrsh7th/cmp-path'
		use 'hrsh7th/cmp-omni'
		use 'hrsh7th/cmp-cmdline'
		use 'hrsh7th/cmp-vsnip'
		use 'hrsh7th/vim-vsnip'
		use {
			'hrsh7th/nvim-cmp',
			config = function()
				require("config.nvimcmp").setup()
			end,
		}

		use "nvim-lua/plenary.nvim"
		use {
			'nvim-telescope/telescope.nvim',
			requires = { {'nvim-lua/plenary.nvim'} },
			config = function()
				require("config.telescope").setup()
			end,
		}
		use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

		use "nvim-treesitter/nvim-treesitter"
		-- use "SmiteshP/nvim-gps"
		-- Lua
		use {
			"SmiteshP/nvim-gps",
			requires = "nvim-treesitter/nvim-treesitter"
		}

		use {
			"nvim-lualine/lualine.nvim",
			-- event = "VimEnter",
			requires = { "nvim-web-devicons", "nvim-gps" },
			config = function()
				require("config.lualine").setup()
			end,
		}

		-- Theme
		use "folke/tokyonight.nvim"

		-- Tree
		use {
  		'kyazdani42/nvim-tree.lua',
  		requires = {
    			'kyazdani42/nvim-web-devicons', -- optional, for file icons
  		},
  		tag = 'nightly' -- optional, updated every week. (see issue #1193)
		}


	end

	packer_init()
	packer = require "packer"
	packer.init(conf)
	return packer.startup(plugins)

end
return M
