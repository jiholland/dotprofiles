-- Undo history visualizer.

return {
  "mbbill/undotree",
  vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undo-tree panel." })
}
