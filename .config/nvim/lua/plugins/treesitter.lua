-- Syntax highlighting.

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "bash",
        "json",
        "lua",
        "markdown",
        "python",
        -- "yaml",  # ansible-vim plugin instead.
      },
      highlight = { enable = true },
    })
  end,
}
