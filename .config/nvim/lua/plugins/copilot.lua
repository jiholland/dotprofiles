-- Github Copilot integration.

return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        auto_trigger = false,
        keymap = {
          next = "<c-c>",
          prev = "<c-p>",
          accept = "<c-space>",
          dismiss = "<c-q>",
        },
      },
      filetypes = {
        ["*"] = true
      },
    })
  end,
}
