require("plugins.tree")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.fugitive")
require("plugins.dracula")
require("plugins.lualine")

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
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- COC
  use {
    "ms-jpq/coq_nvim",
    branch = "coq",
    event = "InsertEnter",
    opt = true,
    run = ":COQdeps",
    config = function()
      require("plugins.coq").setup()
    end,
    requires = {
      { "ms-jpq/coq.artifacts", branch = "artifacts" },
      { "ms-jpq/coq.thirdparty", branch = "3p", module = "coq_3p" },
    },
    disable = false,
  }

  -- Completion
  use {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    opt = true,
    config = function()
      require("plugins.cmp").setup()
    end,
    wants = { "LuaSnip" },
    requires = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
      "ray-x/cmp-treesitter",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
      {
        "L3MON4D3/LuaSnip",
        wants = "friendly-snippets",
        config = function()
          require("plugins.luasnip").setup()
        end,
      },
      "rafamadriz/friendly-snippets",
      disable = false,
    },
  }
end)
