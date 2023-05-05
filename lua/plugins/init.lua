require("plugins.tree")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.fugitive")
require("plugins.dracula")
require("plugins.lualine")
require("plugins.coq")
require("plugins.autopairs")

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
    config = function()
      require("nvim-tree").setup {}
    end
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

  -- COC
  use {
    "ms-jpq/coq_nvim",
    branch = "coq",
    run = ":COQdeps"
  }
end)
