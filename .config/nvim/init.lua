-- ~/.config/nvim/init.lua

if vim.loader then
  vim.loader.enable()
end

require("options")
require("plugins")
require("keymaps")
require("commands")

vim.lsp.enable({
  "ansible",
  "python"
})
