local function map_key(mode, key_to_bind, action_to_execute)
	vim.keymap.set(mode, key_to_bind, action_to_execute)
end

-- Copy
map_key("v", "<C-c>", '"+y')

-- Cut
map_key("v", "<C-x>", '"+c')

-- Paste
map_key("i", "<C-v>", "<C-R><C-O>+")
map_key("v", "<C-v>", '"+p')
map_key("n", "<C-v>", '"+p')

-- 0 working properly
map_key("n", "0", "^")
map_key("v", "0", "^")

-- $ working properly
map_key("n", "$", "g_")
map_key("v", "$", "g_")

-- Fast save
map_key("n", "<C-s>", ":w!<cr>")

-- Fast close
map_key("n", "<C-q>", ":q!<cr>")

-- Split
map_key("n", "<leader>vs", ":vsplit<cr>")
map_key("n", "<leader>hs", ":split<cr>")

-- Disable search highlight
map_key("n", "<Esc><Esc>", ":noh<cr>")

-- Tabs
map_key("n", "<tab>", ">>")
map_key("n", "<S-tab>", "<<")
map_key("v", "<tab>", ">gv")
map_key("v", "<S-tab>", "<gv")

-- Ctrl-a
map_key("n", "<C-a>", "gg0vG$")

-- Move entire line of text
map_key("n", "<M-j>", "mz:m+<cr>`z")
map_key("n", "<M-k>", "mz:m-2<cr>`z")
map_key("v", "<M-j>", ":m'>+<cr>`<my`>mzgv`yo`z")
map_key("v", "<M-k>", ":m'<-2<cr>`>my`<mzgv`yo`z")

-- Movement between splits
map_key("n", "<C-h>", "<C-W>h")
map_key("n", "<C-j>", "<C-W>j")
map_key("n", "<C-k>", "<C-W>k")
map_key("n", "<C-l>", "<C-W>l")

-- Movement between buffers
map_key("n", "<leader>j", ":bp<CR>")
map_key("n", "<leader>l", ":bn<CR>")
