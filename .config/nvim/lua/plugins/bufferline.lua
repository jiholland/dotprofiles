-- Bufferline.

return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    -- Optional for icon support (requires nerd-fonts or font-icons).
    { "nvim-tree/nvim-web-devicons" }
  },
  config = function()
    require("bufferline").setup({})
    vim.opt.termguicolors = true
  end,
}
