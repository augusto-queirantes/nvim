require("plugins.dracula")
require("plugins.lualine")
require("plugins.fugitive")
require("plugins.vgit")
require("plugins.autopairs")
require("plugins.tree")
require("plugins.telescope")
require("plugins.completion")
require("plugins.mason")
require("plugins.lsp")

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

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

  -- LSP
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"

  -- Completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
end)
