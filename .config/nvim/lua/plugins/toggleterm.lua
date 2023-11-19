-- Toggleterm

return {
  {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {},
  vim.keymap.set("n", "<leader>t", vim.cmd.ToggleTerm, { desc = "Toggle terminal." })
  },
}
