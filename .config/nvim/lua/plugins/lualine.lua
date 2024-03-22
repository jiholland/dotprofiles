-- Statusline.

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    { "catppuccin/nvim", name = "catppuccin" },
    { "nvim-tree/nvim-web-devicons" },
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
