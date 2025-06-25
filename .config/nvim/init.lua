if vim.loader then
  vim.loader.enable()
end

require("options")
require("plugins")
require("keymaps")
require("autocmds")

vim.lsp.enable(
  "ansible",
  "bash",
  "jinja",
  "json",
  "lua",
  "markdown",
  "python"
)
