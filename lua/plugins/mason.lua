require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "cssls",
    "dockerls",
    "docker_compose_language_service",
    "eslint",
    "html",
    "jsonls",
    "tsserver",
    "lua_ls",
    "marksman",
    "prismals",
    "tailwindcss"
  },

  automatic_installation = true
})
