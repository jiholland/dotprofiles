-- ~/.config/nvim/lua/plugins.lua

vim.pack.add({
  "https://github.com/catppuccin/nvim.git",
  "https://github.com/ibhagwan/fzf-lua.git",
  "https://github.com/pearofducks/ansible-vim.git",
})

require("catppuccin").setup({
  transparent_background = true,
})
vim.cmd.colorscheme("catppuccin")
