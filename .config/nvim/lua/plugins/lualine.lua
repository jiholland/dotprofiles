-- Statusline.

return {
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      if not pcall(require, "lualine") then return end
      require("lualine").setup({
        options = {
          icons_enabled = true, -- Requires nerd-font.
          theme = "auto",
          section_separators = "",
          component_separators = "",
        }
      })
    end,
  },
}
