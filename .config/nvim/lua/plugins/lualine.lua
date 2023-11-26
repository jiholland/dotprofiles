-- Statusline.

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    -- Optional icon support.
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        section_separators = "",
        component_separators = "",
      }
    })
  end,
}
