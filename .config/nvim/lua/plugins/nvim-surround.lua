-- Surround selections.

return {
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        keymaps = {
          normal = "<leader>sy",
          normal_cur = "<leader>sys",
          normal_line = "<leader>syS",
          normal_cur_line = "<leader>sySS",
          delete = "<leader>sd",
          change = "<leader>sc",
        },
      })
    end,
  },
}
