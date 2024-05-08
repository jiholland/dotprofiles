-- Start screen.

return {
  "nvimdev/dashboard-nvim",
  dependencies = {
    { "ibhagwan/fzf-lua" },
    { "nvim-tree/nvim-web-devicons" },
  },
  event = "VimEnter",
  config = function()
    require("dashboard").setup({
      shortcut_type = "number",
      config = {
        week_header = {
          enable = true,
        },
        project = {
          action = "FzfLua files cwd="
        },
      },
    })
  end,
}
