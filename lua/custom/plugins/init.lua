local M = {}

local function configure()
  local dap_install = require "dap-install"
  dap_install.setup {
    installation_path = vim.fn.stdpath "data" .. "/dapinstall/",
  }

  local dap_breakpoint = {
    error = {
      text = "🟥",
      texthl = "LspDiagnosticsSignError",
      linehl = "",
      numhl = "",
    },
    rejected = {
      text = "",
      texthl = "LspDiagnosticsSignHint",
      linehl = "",
      numhl = "",
    },
    stopped = {
      text = "⭐️",
      texthl = "LspDiagnosticsSignInformation",
      linehl = "DiagnosticUnderlineInfo",
      numhl = "LspDiagnosticsSignInformation",
    },
  }

  vim.fn.sign_define("DapBreakpoint", dap_breakpoint.error)
  vim.fn.sign_define("DapStopped", dap_breakpoint.stopped)
  vim.fn.sign_define("DapBreakpointRejected", dap_breakpoint.rejected)
end

local function configure_exts()
  require("nvim-dap-virtual-text").setup {
    commented = true,
  }

  local dap, dapui = require "dap", require "dapui"
  dapui.setup {} -- use default
  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
  end
  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
  end
  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
  end
end

local function configure_debuggers()
  require("custom.plugins.dap.lua").setup()
  require("custom.plugins.dap.python").setup()
  require("custom.plugins.dap.rust").setup()
  require("custom.plugins.dap.go").setup()
end

function M.setup()
  configure() -- Configuration
  configure_exts() -- Extensions
  configure_debuggers() -- Debugger
  require("custom.plugins.dap.keymaps").setup() -- Keymaps
end

configure_debuggers()

return M
-- return {
-- 	-- 快速分析启动时间
-- 	["dstein64/vim-startuptime"] = {
-- 		cmd = "StartupTime",
-- 	},
-- 	-- 函数列表
-- 	["liuchengxu/vista.vim"] = {
-- 		cmd = "Vista",
-- 	},
-- 	["jose-elias-alvarez/null-ls.nvim"] = {
-- 		after = "nvim-lspconfig",
-- 		config = function()
-- 			require("custom.plugins.null-ls")
-- 		end,
-- 	},
-- }
