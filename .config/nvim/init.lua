-- ~/.config/nvim/init.lua

if vim.loader then
  vim.loader.enable()
end

require("config.autocmds")
require("config.keymaps")
require("config.lazy")
require("config.options")
