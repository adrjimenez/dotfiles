-- Just an example, supposed to be placed in /lua/custom/

local M = {}
local pluginConfs = require "custom.plugins.configs"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "chadracula",
}

-- This sets my own mapping, need to figure out how to better manage this
M.nvimtree = {
  n = {
    -- refresh
    ["<C-r>"] = { "<cmd> NvimTreeRefresh <CR>", "   refresh nvimtree" },
  },
}

M.plugins = {
  -- This installs custom plugins
  --user = require "custom.plugins",
  -- This overrides default nvchad plugin settings
  override = {
      ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,
      ["goolord/alpha-nvim"] = pluginConfs.alpha,
   },
}

return M
