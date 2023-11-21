-- Comment plugin.

return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      toggler = {
        line = "<leader>cc"
      },
      opleader = {
        line = "<leader>c"
      },
    })
  end,
}
