-- ~/.config/nvim/lua/plugins.lua

vim.pack.add({
  "https://github.com/pearofducks/ansible-vim.git",
  "https://github.com/akinsho/bufferline.nvim.git",
  "https://github.com/catppuccin/nvim.git",
  "https://github.com/folke/which-key.nvim.git",
  "https://github.com/ibhagwan/fzf-lua.git",
  "https://github.com/lewis6991/gitsigns.nvim.git",
  "https://github.com/lukas-reineke/indent-blankline.nvim.git",
  "https://github.com/mbbill/undotree.git",
  "https://github.com/nvim-tree/nvim-web-devicons.git",
})

require("bufferline").setup({})
require("ibl").setup({})

require("catppuccin").setup({
  transparent_background = true,
})
vim.cmd.colorscheme("catppuccin")
