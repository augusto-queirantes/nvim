return {
  {
    "akinsho/bufferline.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "famiu/bufdelete.nvim",
    },
    config = function()
      require("bufferline").setup({
        highlights = require("catppuccin.groups.integrations.bufferline").get(),
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
          close_command = require("bufdelete").bufdelete,
        },
      })
    end,

    vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>", {}),
    vim.keymap.set("n", "<leader>bc", ":BufferLinePickClose<CR>", {}),
    vim.keymap.set("n", "<C-w>", ":Bdelete<CR>", {}),
  },
}
