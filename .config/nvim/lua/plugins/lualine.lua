-- Statusline.

return {
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      if not pcall(require, "lualine") then return end
      require("lualine").setup({
        options = {
          theme = "tokyonight",
        }
      })
    end,
  },
}
