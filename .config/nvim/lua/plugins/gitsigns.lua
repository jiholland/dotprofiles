-- Git decorations.

return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({})
        vim.keymap.set("n", "<leader>gh", function() require("gitsigns").preview_hunk() end, { desc = "Preview git hunk." })
        vim.keymap.set("n", "<leader>gs", function() require("gitsigns").stage_hunk() end, { desc = "Stage git hunk." })
        vim.keymap.set("n", "<leader>gu", function() require("gitsigns").undo_stage_hunk() end, { desc = "Undo staged git hunk." })
        vim.keymap.set("n", "<leader>gr", function() require("gitsigns").reset_hunk() end, { desc = "Reset git hunk." })
        vim.keymap.set("n", "<leader>gc", function() require("gitsigns").toggle_current_line_blame() end, { desc = "View last commit in git." })
    end,
  },
}
