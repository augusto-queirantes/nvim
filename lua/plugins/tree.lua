local function open_nvim_tree()
	require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

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
