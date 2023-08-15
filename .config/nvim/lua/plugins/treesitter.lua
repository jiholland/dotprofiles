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
          "c",
          "lua",
          "vim",
          "vimdoc",
          "query",
          "bash",
          "python",
          "yaml",
          "json",
          "html"
        },
        highlight = {
          enable = true,
        },
      })
    end,
  },
}
