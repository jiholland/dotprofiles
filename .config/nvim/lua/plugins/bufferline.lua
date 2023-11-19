-- Bufferline.

return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    -- Optional for icon support (requires nerd-fonts or font-icons).
    { "nvim-tree/nvim-web-devicons" },
  },
  config = function()
    require("bufferline").setup({
      options = {
        style_preset = "bufferline.style_preset.minimal",
        show_buffer_icons = true  -- Requires nerd-fonts.
      },
    })
    vim.opt.termguicolors = true
    vim.keymap.set("n", "<leader>ld", vim.cmd.bdelete, { desc = "Close buffer." })
    vim.keymap.set("n", "<leader>lp", vim.cmd.BufferLinePick, { desc = "Pick buffer." })
    vim.keymap.set("n", "<leader>lj", vim.cmd.BufferLineCycleNext, { desc = "Go to next buffer." })
    vim.keymap.set("n", "<leader>ll", vim.cmd.BufferLineCyclePrev, { desc = "Go to previous buffer." })
  end,
}
