-- Treesitter syntax highlighting.

return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects", },
    build = ":TSUpdate",
    config = function()
      if not pcall(require, "nvim-treesitter") then return end
      require("nvim-treesitter.configs").setup {
        ensure_installed = { "bash", "python", "yaml" },
        highlight = { enable = true, }
      }
    end,
  },
}
