-- Telescope fuzzy finder with file_browser extension.

return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "BurntSushi/ripgrep" },
      { "nvim-telescope/telescope-file-browser.nvim" },
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      { "nvim-tree/nvim-web-devicons" },
    },
    config = function()
      if not pcall(require, "telescope") then return end
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>tf", builtin.find_files, { desc = "Find files with Telescope." })
      vim.keymap.set("n", "<leader>tg", builtin.live_grep, { desc = "Grep files with Telescope." })
      vim.keymap.set("n", "<leader>td", builtin.diagnostics, { desc = "Find diagnostics with Telescope." })
      require("telescope").load_extension("file_browser")
      vim.api.nvim_set_keymap("n", "<leader>tb", "<cmd>Telescope file_browser<cr>", { noremap = true, desc = "Browse files with Telescope file_browser." })
      require("telescope").load_extension("fzf")
    end,
  },
}
