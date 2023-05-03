return require("packer").startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme
  use { "ellisonleao/gruvbox.nvim" }

  -- Nerdtree
  use "scrooloose/nerdtree"
  use "Xuyuanp/nerdtree-git-plugin"

  -- Autopairs
  use "jiangmiao/auto-pairs"

  -- File finder
  use { "junegunn/fzf", run = ":call fzf#install()" }
  use "junegunn/fzf.vim"

  -- Coc
  use {'neoclide/coc.nvim', branch = 'release'}
end)
