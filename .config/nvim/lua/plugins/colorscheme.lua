-- Colorscheme.

return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      if not pcall(require, "tokyonight") then return end
      require("tokyonight").setup({
        style = "night",
      })
      vim.cmd[[colorscheme tokyonight]]
    end,
  },
}
