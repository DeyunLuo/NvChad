-- local adapters = {''}  --list your adapters here
--
-- for _, adapter in ipairs(adapters) do
--   require("custom.plugins.dap." .. adapter)
-- end


local M = {}

local function dap_mappings()
   vim.api.nvim_set_keymap("n", "<Leader>r", '<Cmd>lua require"dap".repl.toggle()<CR>', {
      silent = true,
      noremap = true,
   })
   vim.api.nvim_set_keymap("n", "<Leader>d", '<Cmd>lua require"dapui".toggle()<CR>', {
      silent = true,
      noremap = true,
   })
   vim.api.nvim_set_keymap("n", "<C-b>", '<Cmd>lua require"dap".toggle_breakpoint()<CR>', {
      silent = true,
      noremap = true,
   })
   vim.api.nvim_set_keymap("n", "<C-c>", '<Cmd>:lua require"dap".continue()<CR>',{
      silent = true,
      noremap = true,
   })
   vim.api.nvim_set_keymap("n", "<C-s>", '<Cmd>lua require"dap".step_over()<CR>', {
      silent = true,
      noremap = true,
   })
   vim.api.nvim_set_keymap("n", "<C-S>", '<Cmd>lua require"dap".step_into()<CR>', {
      silent = true,
      noremap = true,
   })
   vim.api.nvim_set_keymap("n", "<C-n>", '<Cmd>lua require"dap".run_to_cursor()<CR>', {
      silent = true,
      noremap = true,
   })
end


local function configure_debuggers()
  require("dapui").setup()
  require("dap-go").setup()
  require("dap-python").setup("/usr/bin/python3")
end

function M.setup()
  dap_mappings()
  configure_debuggers() -- Debugger
  -- require("config.dap.keymaps").setup() -- Keymaps
end

-- configure_debuggers()

return M


--if you do not want to use dapui, specific widget windows can be loaded via lua instead like so
-- vim.api.nvim_set_keymap("n", "<Leader>s", '<Cmd>lua require"custom.plugins.dap_configs.widget_config".load_scope_in_sidebar()<CR>', {
--    silent = true,
--    noremap = true,
-- })
-- where custom.plugins.dap_configs.widget_config contains:
-- M = {}
-- local widgets = require('dap.ui.widgets')
--
-- M.load_scope_in_sidebar = function ()
--   local my_sidebar = widgets.sidebar(widgets.scopes)
--   my_sidebar.toggle()
-- end
--
-- return M
