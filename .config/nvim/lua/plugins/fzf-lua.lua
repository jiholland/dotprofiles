-- Fuzzy finder.

return {
  "ibhagwan/fzf-lua",
  dependencies = {
    { "junegunn/fzf", build = "./install --bin" },
    -- Optional for icon support (requires nerd-fonts or font-icons).
    { "nvim-tree/nvim-web-devicons" },
  },
  config = function()
    require("fzf-lua").setup({})
    vim.keymap.set("n", "<leader>fk", function() require('fzf-lua').builtin() end, { desc = "List all fzf commands." })
    vim.keymap.set("n", "<leader>ff", function() require('fzf-lua').files() end, { desc = "Find files." })
    vim.keymap.set("n", "<leader>fg", function() require('fzf-lua').live_grep() end, { desc = "Live grep." })
    vim.keymap.set("n", "<leader>gs", function() require('fzf-lua').git_status() end, { desc = "Git status." })
    vim.keymap.set("n", "<leader>gb", function() require('fzf-lua').git_branches() end, { desc = "Git branches." })
    vim.keymap.set("n", "<leader>gc", function() require('fzf-lua').git_commits() end, { desc = "Git commits." })
  end,
}
