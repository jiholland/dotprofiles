-- LSP wrapper.

return {
  "VonHeikemen/lsp-zero.nvim",
  branch = "v4.x",
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
    -- Configure nvim-lspconfig
    local lsp_zero = require("lsp-zero")
    local lsp_attach = function(client, bufnr)
      lsp_zero.default_keymaps({buffer = bufnr})
    end
    lsp_zero.extend_lspconfig({
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
      lsp_attach = lsp_attach,
      float_border = "rounded",
      sign_text = true,
    })
    -- Install LSP servers.
    require("mason").setup({})
    require("mason-lspconfig").setup({
      ensure_installed = {
        "ansiblels",
        "bashls",
        "docker_compose_language_service",
        "html",
        "lua_ls",
        "marksman",
        "pyright",
        "taplo",
        "yamlls",
      },
      handlers = {
        lsp_zero.default_setup,
      },
    })
    -- Configure autocompletion.
    local cmp = require("cmp")
    cmp.setup({
      sources = {
        { name = "nvim_lsp" },
      },
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({}),
    })
  end,
}
