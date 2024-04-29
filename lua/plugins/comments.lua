return {
	"preservim/nerdcommenter",
	lazy = false,
	config = function()
		vim.keymap.set("n", "<C-space>", ':call nerdcommenter#Comment(0, "toggle")<CR>', {})
		vim.keymap.set("v", "<C-space>", ':call nerdcommenter#Comment(0, "toggle")<CR>', {})
	end,
}
