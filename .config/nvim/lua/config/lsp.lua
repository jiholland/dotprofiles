-- LSP configuration.

if pcall(require, "lsp-zero") then
  local lsp = require("lsp-zero").preset({
    name = "minimal",
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = false,
  })
  lsp.ensure_installed({
    -- Add your required language servers here.
    "ansiblels",
    "bashls",
    "terraformls",
    "pyright",
  })
  lsp.setup()
end
