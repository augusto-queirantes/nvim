return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "ruby" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          mason = false,
          cmd = { "ruby-lsp" },
          root_dir = function(fname)
            return require("lspconfig").util.root_pattern("Gemfile", ".git")(fname)
          end,
        },
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "erb-formatter", "erb-lint" } },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ruby = { "rubocop" },
        eruby = { "erb_format" },
      },
      formatters = {
        rubocop = {
          command = "bundle",
          args = { "exec", "rubocop", "--stdin", "$FILENAME", "--autocorrect-all", "--stderr" },
          stdin = true,
          cwd = require("conform.util").root_file("Gemfile"),
          exit_codes = { 0, 1 },
        },
      },
    },
  },
}
