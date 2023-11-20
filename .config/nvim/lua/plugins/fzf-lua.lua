-- Fuzzy finder.

return {
  "ibhagwan/fzf-lua",
  dependencies = {
    { "junegunn/fzf", build = "./install --bin" },
    -- Optional for icon support (requires nerd-fonts or font-icons).
    { "nvim-tree/nvim-web-devicons" },
  },
  config = function()
    require("fzf-lua").setup({})
  end,
}
