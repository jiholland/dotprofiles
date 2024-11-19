-- Bufferline.

return {
  "akinsho/bufferline.nvim",
  version = "*",
  config = function()
    require("bufferline").setup({
      options = {
        show_buffer_close_icons = false,
      },
    })
  end,
}
