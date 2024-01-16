return {
	"RRethy/vim-illuminate",
	config = function()
		vim.keymap.set("n", "<C-d>", function()
			require("illuminate").goto_next_reference()
		end)

		vim.keymap.set("n", "<C-D>", function()
			require("illuminate").goto_prev_reference()
		end)
	end,
}
