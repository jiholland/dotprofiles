-- Fuzzy finder.

return {
  "ibhagwan/fzf-lua",
  dependencies = {
    { "junegunn/fzf", build = "./install --bin" },
    { "nvim-tree/nvim-web-devicons" },
  },
  config = function()
    require("fzf-lua").setup({})
  end,
}
