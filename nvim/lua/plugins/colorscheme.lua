--return {
--  "tiagovla/tokyodark.nvim",
--  lazy = false,
--  priority = 1000,
--  opts = {
--    transparet_background = true,
--  },
--    config = function(_, opts)
--        require("tokyodark").setup(opts) -- calling setup is optional
--        vim.cmd [[colorscheme tokyodark]]
--    end,
--}

return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night",
    transparent= true,
  },
    config = function(_, opts)
        require("tokyonight").setup(opts) -- calling setup is optional
        vim.cmd [[colorscheme tokyonight]]
    end,
}
