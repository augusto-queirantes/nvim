local vim_options = vim.o
local global_variables = vim.g

--
-- Options
--

-- Shows line number
vim_options.number = true

-- Hiddens tabs instead of closing then
vim_options.hiden = true

-- Allows mouse usage
vim_options.mouse = "a"

-- Shows commands preview in a split
vim_options.inccommand = "split"

-- Highlights on search
vim_options.hlsearch = true

-- Updates a file when is changed from the outside
vim_options.autoread = true

-- Sets persistent undo
vim_options.undofile = true

-- Allows regex to work properly
vim_options.magic = true

-- Removes annoting sounds
vim_options.noerrorbells = true
vim_options.novisualbell = true

-- Highlights current line
vim_options.cursorline = true

-- Allows ctrl-c usage
vim_options.clipboard = "unnamedplus"

--
-- Globbal Variables
--

global_variables.mapleader = " "
global_variables.maplocalleader = " "
