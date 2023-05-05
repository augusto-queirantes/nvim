require("plugins.autopairs")
require("plugins.dracula")
require("plugins.fugitive")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.tree")
require("plugins.treesitter")

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- Colorscheme
  use 'Mofiqul/dracula.nvim'

  -- Nvim tree
  use {
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons",
    },
  }

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
  }

  -- Git
  use "tpope/vim-fugitive"

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  use {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make"
  }

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } }

  -- Autopairs
  use "windwp/nvim-autopairs"
end)
