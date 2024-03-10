return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			filters = {
				dotfiles = true,
			},
		})
	end,

	vim.keymap.set("n", "<C->", ":NvimTreeToggle<CR>", {}),
	vim.keymap.set("n", "<C-n>", ":NvimTreeFocus<CR>", {}),
	vim.keymap.set("n", "<leader>ff", ":NvimTreeFindFile<CR>", {}),
}
