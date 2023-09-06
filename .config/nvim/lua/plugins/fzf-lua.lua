-- Fuzzy finder.

return {
  {
    "ibhagwan/fzf-lua",
    dependencies = {
      { "junegunn/fzf", build = "./install --bin" },
      -- Optional for icon support (requires nerd-fonts or font-icons).
      { "nvim-tree/nvim-web-devicons" },
    },
    config = function()
      require("fzf-lua").setup({})
      vim.keymap.set("n", "<leader>ff", "<cmd>lua require('fzf-lua').files()<CR>", { desc = "Find files." }, { silent = true })
      vim.keymap.set("n", "<leader>fg", "<cmd>lua require('fzf-lua').live_grep()<CR>", { desc = "Live grep." }, { silent = true })
      vim.keymap.set("n", "<leader>fk", "<cmd>lua require('fzf-lua').builtin()<CR>", { desc = "List all fzf commands." }, { silent = true })
    end,
  },
}
