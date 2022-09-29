local M = {}

M.general = {

   n = {

      -- quit
      ["Q"] = { "<cmd> q <CR>", "﬚  quit file" },

      -- save
      ["S"] = { "<cmd> w <CR>", "﬚  save file" },

      -- split file right
      ["sk"] = { "<cmd> set splitright <CR> <cmd> vsplit <CR>", "﬚  split file right" },

      -- split file above
      ["sj"] = { "<cmd> set nosplitbelow <CR> <cmd> split <CR>", "﬚  split file above" },

      -- switch between windows
      ["<S-h>"] = { "<C-w>h", " window left" },
      ["<S-l>"] = { "<C-w>l", " window right" },
      ["<S-j>"] = { "<C-w>j", " window down" },
      ["<S-k>"] = { "<C-w>k", " window up" },


   },

}

M.nvimtree = {

  n = {
    -- toggle
    ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },

    -- focus
    ["<leader><leader>"] = { "<cmd> NvimTreeFocus <CR>", "   focus nvimtree" },
  },
}

M.comment = {

   -- toggle comment in both modes
   n = {
      ["<D-/>"] = {
         function()
            require("Comment.api").toggle_current_linewise()
         end,

         "蘒  toggle comment",
      },
   },

   v = {
      ["<D-/>"] = {
         "<ESC><cmd>lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>",
         "蘒  toggle comment",
      },
   },
}


return M
