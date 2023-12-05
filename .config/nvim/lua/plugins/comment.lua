-- Comment plugin.

return {
  "numToStr/Comment.nvim",
  event = "VeryLazy",
  opts = {
    toggler = {
      line = "<leader>cc"
    },
    opleader = {
      line = "<leader>c"
    },
  }
}
