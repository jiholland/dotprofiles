-- Bufferline.

return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons"  -- Optional for icon support.
  },
  config = function()
    require("bufferline").setup({
      options = {
        style_preset = "bufferline.style_preset.minimal",
        show_buffer_icons = true,  -- Requires nerd-font.
      },
    })
  end,
}
