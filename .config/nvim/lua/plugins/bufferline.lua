-- Bufferline.

return {
  "akinsho/bufferline.nvim",
  verson = "*",
  config = function()
    require("bufferline").setup({
      options = {
        show_buffer_close_icons = false,
        show_buffer_icons = false,
      },
    })
  end,
}
