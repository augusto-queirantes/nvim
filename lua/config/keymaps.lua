local function map_key(mode, key_to_bind, action_to_execute)
  vim.keymap.set(mode, key_to_bind, action_to_execute)
end

-- Copy
map_key("v", "<C-c>", '"+y')

-- Paste
map_key("i", "<C-v>", "<C-R><C-O>+")
map_key("v", "<C-v>", '"+p')
map_key("n", "<C-v>", '"+p')

-- Fast quit
map_key("n", "<C-q>", ":q<CR>")

-- Fast save
map_key("n", "<C-s>", ":w<CR>")
