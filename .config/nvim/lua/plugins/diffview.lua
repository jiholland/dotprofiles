-- Git diff viewer.

return {
  {
    "sindrets/diffview.nvim",
    config = function()
      require("diffview").setup({
        vim.keymap.set("n", "<leader>gv", vim.cmd.DiffviewOpen, { desc = "Toggle git diff view." }),
    })
    end,
  },
}
