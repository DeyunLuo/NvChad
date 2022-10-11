-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
	theme = "decay",
	-- theme = "chadracula",
}

M.mappings = require("custom.mappings")

M.init = require("custom.init")

local plugin_confs = require("custom.plugins.configs")

M.plugins = {
	user = {
		["kyazdani42/nvim-tree.lua"] = plugin_confs.nvimtree,
		["neovim/nvim-lspconfig"] = plugin_confs.lspconfig,
		["jose-elias-alvarez/null-ls.nvim"] = plugin_confs.nullls,
		["mhinz/vim-startify"] = plugin_confs.vim_startify,
		["mfussenegger/nvim-dap"] = plugin_confs.nvim_dap,
	},
}

return M
