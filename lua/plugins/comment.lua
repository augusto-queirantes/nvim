require('nvim_comment').setup({ operator_mapping = "<C-Space>", comment_empty = false })

vim.keymap.set("n", "<C-Space>", "<cmd>CommentToggle<cr>")
