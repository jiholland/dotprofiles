-- Show trouble as list.

return {
  {
    "folke/trouble.nvim",
    dependencies = {
      {"nvim-tree/nvim-web-devicons" },
    },
    opts = {
       vim.keymap.set("n", "<leader>x", function() require("trouble").toggle("workspace_diagnostics") end, { desc = "Toggle trouble panel." }),
     },
  },
}
