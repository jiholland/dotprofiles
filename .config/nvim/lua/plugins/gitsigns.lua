-- Git decorations.

return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
        vim.keymap.set("n", "<leader>gd", "<cmd>lua require('gitsigns').toggle_deleted()<CR>", { desc = "View deleted change in git." }, { silent = true })
        vim.keymap.set("n", "<leader>gb", "<cmd>lua require('gitsigns').toggle_current_line_blame()<CR>", { desc = "View last commit in git." }, { silent = true })
    end,
  },
}
