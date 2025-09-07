vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" }, -- Apply to all file types
  command = [[%s/\s\+$//e]], -- Substitute trailing whitespace with nothing
})
