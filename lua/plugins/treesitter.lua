return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = false,
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				indent = {
					enable = true,
				},
				sync_install = false,
				auto_install = true,
				ensure_installed = {
					"html",
					"javascript",
					"json",
					"lua",
					"tsx",
					"typescript",
					"vim",
				},
			})
		end,
	},
}
