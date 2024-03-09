return {
  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({
        options = {
          themable = true,
          diagnostics = "nvim_lsp",
          diagnostics_update_in_insert = true,
          color_icons = true,
          show_buffer_icons = true,
          hover = {
            enabled = true,
            delay = 200,
            reveal = { "close" },
          },
        },
      })
    end,
  },
}
