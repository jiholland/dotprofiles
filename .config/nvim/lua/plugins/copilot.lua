-- Github Copilot integration.

return {
  {
    "zbirenbaum/copilot.lua",
    lazy = false,
    config = function()
      if not pcall(require, "copilot") then return end
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
