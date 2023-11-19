-- Neovim's answer to the mouse.

return {
  "ggandor/leap.nvim",
  config = function()
    require("leap").add_default_mappings({})
  end,
}
