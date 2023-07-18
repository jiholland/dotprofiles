-- Keybindings helper.

return {
  {
    "folke/which-key.nvim",
    config = function()
      if not pcall(require, "which-key") then return end
      require("which-key").setup({
      })
    end,
  },
}
