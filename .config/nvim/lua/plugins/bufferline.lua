-- Bufferline.

return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "catppuccin/nvim",
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require("bufferline").setup({
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
      options = {
        show_buffer_close_icons = false,
      },
    })
  end,
}
