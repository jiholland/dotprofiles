-- ~/.config/nvim/lua/autocmds.lua

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.hl.on_yank()
  end,
  desc = "Briefly highlight yanked text."
})
