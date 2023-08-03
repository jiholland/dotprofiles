-- ~/.config/nvim/init.lua

require("config.keymap")
require("config.option")
require("config.plugin")
require("config.lsp")

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function() vim.highlight.on_yank() end,
  desc = "Briefly highlight yanked text."
})
