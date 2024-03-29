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

-- Allows undo
vim_options.undofile = true

-- Leaderkey
global_variables.mapleader = " "

-- Use termguicolors
vim_options.termguicolors = true

-- Show LSP diagnostic on a floating pane instead of a inline message
vim.diagnostic.config({
	virtual_text = false,
})

vim.o.updatetime = 250
vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])
