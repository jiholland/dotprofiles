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
      vim.keymap.set("n", "<leader>ff", function() require('fzf-lua').files() end, { desc = "Find files." })
      vim.keymap.set("n", "<leader>fg", function() require('fzf-lua').live_grep() end, { desc = "Live grep." })
      vim.keymap.set("n", "<leader>fk", function() require('fzf-lua').builtin() end, { desc = "List all fzf commands." })
    end,
  },
}
