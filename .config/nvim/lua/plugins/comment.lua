-- Comment plugin.

return {
  "numToStr/Comment.nvim",
  opts = {
    toggler = {
      line = "<leader>cc"
    },
    opleader = {
      line = "<leader>c"
    },
    mappings = {
      basic = true,
      extra = false,
    },
  }
}
