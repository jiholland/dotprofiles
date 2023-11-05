-- Git decorations.

return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({})
        vim.keymap.set("n", "<leader>gd", function() require("gitsigns").toggle_deleted() end, { desc = "View deleted change in git." })
        vim.keymap.set("n", "<leader>gb", function() require("gitsigns").toggle_current_line_blame() end, { desc = "View last commit in git." })
    end,
  },
}
