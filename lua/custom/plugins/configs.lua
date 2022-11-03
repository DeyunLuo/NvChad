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
	config = function()
		require("custom.plugins.vim_startify")
	end,
}

M.which_key = {
	config = function()
		require("custom.plugins.which_key").setup()
	end,
}

M.nvim_dap = {
	-- after = "coq_nvim",
	-- disable = not plugin_status.dap,
	config = function()
		require("custom.plugins.nvim_dap").setup()
		-- require("custom.plugins.dap.go").setup()
	end,
	requires = {
		"Pocco81/DAPInstall.nvim",
		"rcarriga/nvim-dap-ui",
		"mfussenegger/nvim-dap-python",
		"leoluz/nvim-dap-go",
    "sakhnik/nvim-gdb"
		-- { "leoluz/nvim-dap-go", module = "dap-go" },
		--"mfussenegger/nvim-dap-python", can be used instead of a config file for the Python adapter by requiring it where your config would be.
	},
}

return M
