-- Github Copilot integration.

return {
  {
    "zbirenbaum/copilot.lua",
    lazy = false,
    config = function()
      require("copilot").setup({
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<c-space>",
          },
        },
        filetypes = {
          ["yaml"] = true,
        },
      })
    end,
  },
}
