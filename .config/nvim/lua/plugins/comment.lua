-- Comment plugin.

return {
  {
    "numToStr/Comment.nvim",
    config = function()
      if not pcall(require, "Comment") then return end
      require("Comment").setup({})
    end,
  },
}
