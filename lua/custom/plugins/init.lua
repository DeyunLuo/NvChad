return {
  -- 快速分析启动时间
  ["dstein64/vim-startuptime"] = {
    cmd = "StartupTime",
  },
  -- 函数列表
  ["liuchengxu/vista.vim"] = {
    cmd = "Vista",
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
}
