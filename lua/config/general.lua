local vim_options = vim.o
local global_variables = vim.g

-- Shows line number
vim_options.number = true

-- Allows mouse usage
vim_options.mouse = "a"

-- Shows commands preview in a split pane
vim_options.inccommand = "split"

-- Allows regex to work properly when searching
vim_options.magic = true

-- Highlights current line
vim_options.cursorline = true

-- Allows ctrl-c usage
vim_options.clipboard = "unnamedplus"

-- Leaderkey
global_variables.mapleader = " "
