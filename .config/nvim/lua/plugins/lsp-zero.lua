-- LSP wrapper.

return {
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
      -- LSP Support.
      { "neovim/nvim-lspconfig" },
      {
        "williamboman/mason.nvim",
        build = function()
          if not pcall(require, "mason") then return end
          pcall(vim.cmd, "MasonUpdate")
        end,
      },
      { "williamboman/mason-lspconfig.nvim" },
      -- Autocompletion.
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "L3MON4D3/LuaSnip" },
    },
    config = function()
      local lsp = require("lsp-zero").preset({})
      lsp.on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        lsp.default_keymaps({buffer = bufnr})
      end)
      lsp.ensure_installed({
        "ansiblels",
        "bashls",
        "html",
        "lua_ls",
        "marksman",
        "pyright",
        "terraformls",
      })
      -- Fix undefined global 'vim'
      lsp.configure("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
                globals = { "vim" },
            },
          },
        },
      })
      lsp.setup()
    end,
  },
}
