-- Indentation guides.

return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {},
  event = "VeryLazy",
  config = function()
    require("ibl").setup({})
  end,
}
