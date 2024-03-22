return {
  {
    "catppuccin/nvim",
    priority = 150,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "frappe",
        integrations = {
          alpha = true,
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          mason = true,
          telescope = {
            enabled = true,
          },
        },
      })

      vim.api.nvim_command("colorscheme catppuccin")
    end,
  },
}
