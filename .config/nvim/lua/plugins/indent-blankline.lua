-- Indentation guides.

return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opt = {},
    config = function()
      require("ibl").setup({})
    end,
  },
}
