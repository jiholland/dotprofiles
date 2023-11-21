-- Show trouble as list.

return {
  "folke/trouble.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"  -- Optional for icon support.
  },
  opts = {
    icons = true  -- Requires nerd-font.
  },
}
