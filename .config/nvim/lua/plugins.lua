-- ~/.config/nvim/lua/plugins.lua

vim.pack.add({
  "https://github.com/akinsho/bufferline.nvim.git",
  "https://github.com/catppuccin/nvim.git",
  "https://github.com/folke/which-key.nvim.git",
  "https://github.com/ibhagwan/fzf-lua.git",
  "https://github.com/lewis6991/gitsigns.nvim.git",
  "https://github.com/lukas-reineke/indent-blankline.nvim.git",
  "https://github.com/mbbill/undotree.git",
  "https://github.com/nvim-tree/nvim-web-devicons.git",
  "https://github.com/nvim-treesitter/nvim-treesitter.git",
  "https://github.com/pearofducks/ansible-vim.git",
})

require("bufferline").setup({})
require("ibl").setup({})

require("nvim-treesitter.configs").setup({
  ensure_installed = { "bash", "lua", "python" },
  highlight = { enable = true },
  auto_install = true,
})

require("catppuccin").setup({
  transparent_background = true,
})
vim.cmd.colorscheme("catppuccin")
