require("plugins.dracula")
require("plugins.comment")
require("plugins.lualine")
require("plugins.fugitive")
require("plugins.vgit")
require("plugins.autopairs")
require("plugins.coc")
require("plugins.tree")
require("plugins.telescope")

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- Comments
  use "terrortylor/nvim-comment"

  -- Colorscheme
  use 'Mofiqul/dracula.nvim'

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
  }

  -- Git
  use "tpope/vim-fugitive"
  use "tanvirtin/vgit.nvim"

  -- Autopairs
  use "windwp/nvim-autopairs"

  -- Nvim tree
  use {
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons",
    }
  }

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

  use { 'neoclide/coc.nvim', branch='release' }
end)
