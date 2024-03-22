-- Statusline.

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "catppuccin/nvim",
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require("lualine").setup({
      options = {
        section_separators = "",
        theme = "catppuccin",
      }
    })
  end,
}
