--return {
--  ["NvChad/nvterm"] = {
--    config = function()
--      require "plugins.configs.nvterm"
--    end,
--  },
--}
-- Above is an example of how to install custom plugins, DON'T forget to uncomment line in custom/chadrc.lua
return {
    ["windwp/nvim-ts-autotag"] = {
      ft = { "html", "javascriptreact" },
      after = "nvim-treesitter",
      config = function()
        local present, autotag = pcall(require, "nvim-ts-autotag")

        if present then
          autotag.setup()
        end
      end,
    },

    ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
        require "custom.plugins.null-ls"
      end,
    },

    ["andreadev-it/shade.nvim"] = {
      module = "shade",
      config = function()
        require("shade").setup {
            overlay_opacity = 50,
            opacity_step = 1,
            exclude_filetypes = { "NvimTree" },
        }
      end,
    },

    ["goolord/alpha-nvim"] = {
      disable = false,
    },

    ["Mofiqul/dracula.nvim"] = {
      config = function()
        require('dracula').colors()
      end,
    },
    --["nvim-telescope/telescope-file-browser.nvim"] = {
    --  after = "Telescope",
    --},
}
