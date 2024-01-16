return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = false,
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_by_name = {
						"node_modules",
					},
				},
			},
		})
	end,
}
