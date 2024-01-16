return {
	"folke/zen-mode.nvim",
	opts = {
		window = {
			backdrop = 0.95,
			width = 100,
			height = 0.8,
			options = { signcolumn = "no", number = false, cursorline = false },
		},
		plugins = {
			options = { enabled = true, ruler = false, showcmd = false },
			twilight = { enabled = true },
			gitsigns = { enabled = false },
			tmux = { enabled = false },
		},
	},
	config = function()
		vim.keymap.set("n", "<leader>zm", ":ZenMode<CR>", {})
	end,
}
