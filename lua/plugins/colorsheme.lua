return {
  {
    "catppuccin/nvim",
    priority = 150,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "frappe",
      })

      vim.api.nvim_command("colorscheme catppuccin")
    end,
  },
}
