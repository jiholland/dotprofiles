-- ~/.config/nvim/init.lua

if vim.loader then
  vim.loader.enable()
end

require("options")
require("plugins")
require("keymaps")
require("autocmds")

vim.lsp.enable({
  "ansible",
  "python"
})
