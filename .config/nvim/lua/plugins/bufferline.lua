-- Bufferline.

return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    -- Optional for icon support (requires nerd-fonts or font-icons).
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("bufferline").setup({
      options = {
        style_preset = "bufferline.style_preset.minimal",
        show_buffer_icons = true  -- Requires nerd-fonts.
      },
    })
  end,
}
