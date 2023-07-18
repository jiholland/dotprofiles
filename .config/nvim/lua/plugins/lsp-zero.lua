-- LSP wrapper.

return {
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    dependencies = {
      -- LSP Support.
      {"neovim/nvim-lspconfig"},
      {
        "williamboman/mason.nvim",
        build = function()
          if not pcall(require, "mason") then return end
          pcall(vim.cmd, "MasonUpdate")
        end,
      },
      {"williamboman/mason-lspconfig.nvim"},
      -- Autocompletion.
      {"hrsh7th/nvim-cmp"},
      {"hrsh7th/cmp-nvim-lsp"},
      -- Snippets.
      {"L3MON4D3/LuaSnip"},
    },
  },
}
