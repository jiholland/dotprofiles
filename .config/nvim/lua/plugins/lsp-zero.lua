-- LSP wrapper.

return {
  "VonHeikemen/lsp-zero.nvim",
  branch = "v2.x",
  dependencies = {
    -- LSP support.
    { "neovim/nvim-lspconfig" },
    { "williamboman/mason.nvim", },
    { "williamboman/mason-lspconfig.nvim" },
    -- Autocompletion.
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    -- Snippets.
    { "L3MON4D3/LuaSnip" },
  },
  config = function()
    local lsp = require("lsp-zero").preset({
      manage_nvim_cmp = true,
    })
    lsp.ensure_installed({
      "ansiblels",
      "bashls",
      "lua_ls",
      "marksman",
      "pyright",
    })
    lsp.setup()
  end,
}
