-- Show trouble as list.

return {
  {
    "folke/trouble.nvim",
    dependencies = {
      {"nvim-tree/nvim-web-devicons" },
    },
    opts = {
       vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end, { desc = "Toggle trouble panel." }),
       vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end, { desc = "Toggle workspace diagnostics." }),
       vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end, { desc = "Toggle document diagnostics." }),
     },
  },
}
