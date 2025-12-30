-- ~/.config/nvim/lua/plugins.lua

vim.pack.add({
  "https://github.com/ibhagwan/fzf-lua.git",
  "https://github.com/lewis6991/gitsigns.nvim.git",
  "https://github.com/pearofducks/ansible-vim.git",
  {
    src = "https://github.com/catppuccin/nvim.git",
    name = "catppuccin",
  },
})

require("catppuccin").setup({
  transparent_background = true,
})
vim.cmd.colorscheme("catppuccin")
