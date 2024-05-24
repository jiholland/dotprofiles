-- Fuzzy finder.

return {
  "ibhagwan/fzf-lua",
  dependencies = { "junegunn/fzf", build = "./install --bin" },
  config = function()
    require("fzf-lua").setup({})
  end,
}
