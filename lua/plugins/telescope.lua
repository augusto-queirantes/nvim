local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>f", function()
  builtin.grep_string({ search = vim.fn.input(" Grep > ") })
end)
