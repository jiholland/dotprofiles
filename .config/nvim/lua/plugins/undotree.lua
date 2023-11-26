-- Undo history visualizer.

return {
  "jiaoshijie/undotree",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    require("undotree").setup({})
  end,
}
