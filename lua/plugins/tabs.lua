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
          always_show_bufferline = false,
          indicator = {
            style = "underline",
          },
        },
      })
    end,

    vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>", {}),
    vim.keymap.set("n", "<leader>bc", ":BufferLinePickClose<CR>", {}),
  },
}
