-- Magit for neovim.

return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      { "nvim-lua/plenary.nvim" },   -- required
      { "sindrets/diffview.nvim" },  -- optional
      { "ibhagwan/fzf-lua" },        -- optional
    },
    config = function()
      require("neogit").setup({
        vim.keymap.set("n", "<leader>gn", vim.cmd.Neogit, { desc = "Toggle Neogit." }),
      })
    end,
  },
}
