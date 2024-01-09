return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.eslint_d,
			},
		})

    -- TODO: should I add a automatic command to do this?
		vim.keymap.set("n", "==", vim.lsp.buf.format, {})
	end,
}
