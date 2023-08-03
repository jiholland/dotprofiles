-- Telescope fuzzy finder with file_browser extension.

return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope-file-browser.nvim" },
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      -- Optional for icon support (requires nerd-fonts or font-icons).
      { "nvim-tree/nvim-web-devicons" },
    },
    config = function()
      if not pcall(require, "telescope") then return end
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files with Telescope." })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Grep files with Telescope." })
      vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Find diagnostics with Telescope." })
      require("telescope").load_extension("file_browser")
      vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope file_browser<cr>", { noremap = true, desc = "Browse files with Telescope file_browser." })
      require("telescope").load_extension("fzf")
    end,
  },
}
