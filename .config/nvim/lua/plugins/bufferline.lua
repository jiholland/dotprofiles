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
        style_preset = "bufferline.style_preset.minimal",
        show_buffer_icons = true,
      },
    })
  end,
}
