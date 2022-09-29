-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "monekai",
  -- theme = "chadracula",
}

M.mappings = require "custom.mappings"

M.init = require "custom.init"

local plugin_confs = require "custom.plugins.configs"

M.plugins = {
  user = {
    ["williamboman/mason.nvim"] = plugin_confs.mason_nvim,
    ["kyazdani42/nvim-tree.lua"] = plugin_confs.nvimtree,
    ["neovim/nvim-lspconfig"] = plugin_confs.lspconfig,
    -- ["neovim/nvim-lspconfig"] = {
    --   config = function()
    --     require "plugins.configs.lspconfig"
    --     require "custom.plugins.lspconfig"
    --   end,
    -- },
  }
}

return M
