local M = {}

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
		require("plugins.configs.lspconfig")
		require("custom.plugins.lspconfig")
	end,
}

M.nullls = {
	after = "nvim-lspconfig",
	config = function()
		require("custom.plugins.nullls")
	end,
}

M.vim_startify = {
	require("custom.plugins.vim_startify"),
}

return M
