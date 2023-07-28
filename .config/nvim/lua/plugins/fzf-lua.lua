-- Fuzzy finder.

return {
  {
    "ibhagwan/fzf-lua",
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
    },
    config = function()
      if not pcall(require, "fzf-lua") then return end
      require("fzf-lua").setup({})
      vim.keymap.set("n", "<leader>ff", "<cmd>lua require('fzf-lua').files()<CR>", { desc = "Find files with fzf." }, { silent = true })
      vim.keymap.set("n", "<leader>fg", "<cmd>lua require('fzf-lua').live_grep()<CR>", { desc = "Live grep with fzf." }, { silent = true })
      vim.keymap.set("n", "<leader>fk", "<cmd>lua require('fzf-lua').builtin()<CR>", { desc = "List all fzf commands." }, { silent = true })
    end,
  },
}
