local M = {}
local override = require "custom.override"

M.mappings = require "custom.mappings"

M.plugins = {
  -- This loads custom options on default packages
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },

    -- statusline = {
    --   separator_style = "round",
    -- },
  },

  -- This overrides default nvchad plugin settings
  override = {
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    --["goolord/alpha-nvim"] = override.alpha,
  },

  -- This installs custom plugins
  user = require "custom.plugins",

}

M.ui = {
  --theme = "tokyodark",
  hl_override = {},
  changed_themes = {},
  theme = "chadracula",
  theme_toggle = {"chadracula", "gruvchad"},
  transparency = false,
}

return M
