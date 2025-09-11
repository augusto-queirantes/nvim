-- Remove trailing whitespaces
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" }, -- Apply to all file types
  command = [[%s/\s\+$//e]], -- Substitute trailing whitespace with nothing
})

-- Standardrb configuration
-- https://github.com/standardrb/standard/wiki/IDE:-neovim
vim.api.nvim_create_autocmd("FileType", {
  pattern = "ruby",
  group = vim.api.nvim_create_augroup("RubyLSP", { clear = true }), -- also this is not /needed/ but it's good practice
  callback = function()
    vim.lsp.start({
      name = "standard",
      cmd = { "standardrb", "--lsp" },
    })
  end,
})
