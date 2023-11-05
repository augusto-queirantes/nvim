require("gitsigns").setup({
  current_line_blame = true,
  current_line_blame_opts = {
    delay = 500,
  },
  current_line_blame_formatter = '<author>, <author_time:%d-%m-%Y> - <summary>',
})
