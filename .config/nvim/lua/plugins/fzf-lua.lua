-- Fuzzy finder.

return {
  "ibhagwan/fzf-lua",
  dependencies = {
    { "junegunn/fzf", build = "./install --bin" },
    { "nvim-tree/nvim-web-devicons" },  -- Optional for icon support.
  },
  config = function()
    require("fzf-lua").setup({
      defaults = {
        file_icons = true  -- Requires nerd-font.
      },
    })
  end,
}
