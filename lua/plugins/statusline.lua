return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"meuter/lualine-so-fancy.nvim",
	},
	enabled = true,
	lazy = false,
	event = { "BufReadPost", "BufNewFile", "VeryLazy" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
				globalstatus = true,
				icons_enabled = true,
				component_separators = { left = "|", right = "|" },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = {
					{ "fancy_mode", width = 8 },
				},
				lualine_b = {
					"fancy_branch",
					"fancy_diff",
				},
				lualine_c = {
					{
						"filename",
						path = 1,
						symbols = {
							modified = "  ",
						},
					},
				},
				lualine_x = {
					{
						"fancy_diagnostics",
						sources = { "nvim_lsp" },
						symbols = { error = " ", warn = " ", info = " " },
					},
				},
				lualine_y = {
					{ "fancy_searchcount" },
				},
				lualine_z = {
					{ "fancy_filetype" },
				},
			},
		})
	end,
}
