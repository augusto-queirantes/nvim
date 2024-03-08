return {
	{
		"lewis6991/gitsigns.nvim",
		lazy = false,
	},
	{
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set("n", "<leader>gs", ":Git<CR>", {})
			vim.keymap.set("n", "<leader>gd", ":Gvdiffsplit<CR>", {})
		end,
	},
}
