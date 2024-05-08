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
        component_separators = "",
        section_separators = "",
        theme = "catppuccin",
      },
      sections = {
        lualine_c = {
          {
            "filename",
            path = 4,
          },
        },
      },
    })
  end,
}
