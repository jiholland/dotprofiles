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

-- No more press enter
-- require("vim._core.ui2").enable({})
