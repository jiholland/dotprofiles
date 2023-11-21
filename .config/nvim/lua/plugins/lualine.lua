-- Statusline.

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"  -- Optional for icon support.
  },
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true, -- Requires nerd-font.
        section_separators = "",
        component_separators = "",
      }
    })
  end,
}
