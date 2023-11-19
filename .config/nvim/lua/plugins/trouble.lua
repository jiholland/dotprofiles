-- Show trouble as list.

return {
  "folke/trouble.nvim",
  dependencies = {
    -- Optional for icon support (requires nerd-fonts or font-icons).
    { "nvim-tree/nvim-web-devicons" },
  },
  opts = {},
  vim.keymap.set("n", "<leader>x", function() require("trouble").toggle("workspace_diagnostics") end, { desc = "Toggle trouble panel." }),
}
