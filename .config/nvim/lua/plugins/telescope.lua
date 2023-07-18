-- Telescope fuzzy finder with file_browser extension.

return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      {"nvim-lua/plenary.nvim"},
      {"BurntSushi/ripgrep"},
      {"nvim-telescope/telescope-file-browser.nvim"},
    },
    config = function()
      if not pcall(require, "telescope") then return end
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files with Telescope." })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Grep files with Telescope." })
      vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = "Find diagnostics with Telescope." })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Find help tags with Telescope." })
      require("telescope").load_extension("file_browser")
      vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope file_browser<cr>", { noremap = true, desc = "Browse files with Telescope file_browser." })
    end
  },
}
