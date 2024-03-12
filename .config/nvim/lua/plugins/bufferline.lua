-- Bufferline.

return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    -- Optional icon support.
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require("bufferline").setup({
      options = {
        show_buffer_close_icons = false,
        style_preset = "bufferline.style_preset.minimal",
      },
    })
  end,
}
