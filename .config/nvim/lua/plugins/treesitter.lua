-- Syntax highlighting.

return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "nvim-treesitter/nvim-treesitter-textobjects" },
    },
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "bash",
          "python",
          "yaml",
          "json",
        },
        highlight = {
          enable = true,
        },
      })
    end,
  },
}
