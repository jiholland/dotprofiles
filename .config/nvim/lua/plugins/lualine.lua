-- Lualine statusline.

return {
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      if not pcall(require, "lualine") then return end
      require("lualine").setup({
        options = {
          icons_enabled = false,
          theme = "tokyonight",
          component_separators = "|",
          section_separators = "",
        }
      })
    end,
  },
}
