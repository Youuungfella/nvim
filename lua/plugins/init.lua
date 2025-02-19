vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'

  use {
	  'williamboman/mason.nvim',
	  require('plugins.mason')
  }
  use {'williamboman/mason-lspconfig.nvim',
       require('plugins.mason-lspconfig')
    }


  use 'mfussenegger/nvim-lsp-compl'

  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugink
  use { "catppuccin/nvim",
  as = "catppuccin",
  require('plugins.colorscheme')
  } --colorscheme
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  config = function()
	  require('plugins.lualine')
  end
  }
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} },
  config = function()
	  require('plugins.telescope')
  end
  }
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
	config = function()
		require('plugins.treesitter')
	end
  }

  require('plugins.cmp')


  -- ...
end)

