-- Show trouble as list.

return {
  "folke/trouble.nvim",
   dependencies = {
    -- Optional icon support.
    "nvim-tree/nvim-web-devicons"
  },
  event = "VeryLazy",
  opts = {
    icons = true
  },
}
