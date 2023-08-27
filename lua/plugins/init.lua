require("plugins.autopairs")
require("plugins.coc")
require("plugins.comment")
require("plugins.dracula")
require("plugins.fugitive")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.tree")
require("plugins.vgit")

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- Autopairs
  use "windwp/nvim-autopairs"

  -- Coc
  use { 'neoclide/coc.nvim', branch = 'release' }

  -- Comments
  use "terrortylor/nvim-comment"

  -- Dracula
  use 'Mofiqul/dracula.nvim'

  -- Fugitive
  use "tpope/vim-fugitive"

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Nvim tree
  use {
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons",
    }
  }

  -- Vgit
  use {
    'tanvirtin/vgit.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }
end)
