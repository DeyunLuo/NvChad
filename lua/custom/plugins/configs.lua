local M = {}

M.mason_nvim = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",
    "clangd",
    "clang-format",

    -- shell
    "shfmt",
    "shellcheck",

    "goimports",
    "gopls",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },
  view = {
    side = "left",
    width = 20,
  },
}

M.lspconfig = {
  config = function()
    require "plugins.configs.lspconfig"
    require "custom.plugins.lspconfig"
  end,
}

return M
