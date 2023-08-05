-- Keybindings helper.

return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.opt.timeout = true
    end,
    opts = {}
  },
}
