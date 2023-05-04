require("plugins.tree")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.fugitive")

return require("packer").startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Nvim tree
  use {
    'nvim-tree/nvim-tree.lua',
      requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      require("nvim-tree").setup {}
    end
  }

  -- Git
  use "tpope/vim-fugitive"

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
end)
