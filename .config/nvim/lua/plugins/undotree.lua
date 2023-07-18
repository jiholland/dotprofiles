-- Undo history visualizer.

return {
  {
    "mbbill/undotree",
    config = function()
      if not pcall(require, "undotree") then return end
      vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>", { desc = "Toggle undo tree." })
    end,
  },
}
