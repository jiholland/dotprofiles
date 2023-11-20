-- Statusline.

return {
  "nvim-lualine/lualine.nvim",
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
