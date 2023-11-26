-- Fuzzy finder.

return {
  "ibhagwan/fzf-lua",
  dependencies = {
    { "junegunn/fzf", build = "./install --bin" },
    -- Optional icon support.
    { "nvim-tree/nvim-web-devicons" },
  },
  config = function()
    require("fzf-lua").setup({
      defaults = {
        file_icons = true
      },
    })
  end,
}
