require("plugins.coc")
require("plugins.nvim-tree")

return require("packer").startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme
  use { "ellisonleao/gruvbox.nvim" }

  -- Coc
  use {'neoclide/coc.nvim', branch = 'release'}

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      require("nvim-tree").setup {}
    end
  }
end)