-- LSP wrapper.

return {
  "VonHeikemen/lsp-zero.nvim",
  branch = "v3.x",
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
    local lsp_zero = require("lsp-zero")
    lsp_zero.on_attach(function(client, bufnr)
      lsp_zero.default_keymaps({buffer = bufnr})
    end)
    require("mason").setup({})
    require("mason-lspconfig").setup({
      ensure_installed = {
      "ansiblels",
      "bashls",
      "docker_compose_language_service",
      "html",
      "jinja_lsp",
      "lua_ls",
      "marksman",
      "pyright",
      "taplo",
      "terraformls",
      "yamlls",
      },
      handlers = {
        lsp_zero.default_setup,
      },
    })
  end,
}
