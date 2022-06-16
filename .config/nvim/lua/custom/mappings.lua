local M = {}

--
-- M.disabled = {
--    "<C-n>",
-- }

--M.truzen = {
--   n = {
--      ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "   truzen ataraxis" },
--      ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "   truzen minimal" },
--      ["<leader>tf"] = { "<cmd> TZFocus <CR>", "   truzen focus" },
--   },
--}
M.bufferline = {
  n = {
    ["<C-p>"] = { "<cmd> BufferLineTogglePin <CR>", " pin item on bufferline"},
  },
}

M.treesitter = {
  n = {
    ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
  },
}

M.telescope = {
  n = {
    ["<leader>fs"] = {"<cmd>lua require 'telescope'.extensions.file_browser.file_browser( { path = vim.fn.expand('%:p:h') } )<CR>", " open file browser"},
  },
}

M.shade = {
  n = {
    ["<leader>s"] = {
      function()
        require("shade").toggle()
      end,
      "   toggle shade.nvim",
    },
  },
}

M.nvtree = {
  n = {
    ["<C-r>"] = { "<cmd> NvimTreeRefresh <CR>", " refresh nvimtree" },
  },
}

return M
