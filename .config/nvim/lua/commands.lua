-- ~/.config/nvim/lua/commands.lua

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.hl.on_yank()
  end,
  desc = "Briefly highlight yanked text."
})

vim.api.nvim_create_user_command("PackUpdate", function()
  require("vim.pack").update()
end, { desc = "Update all plugins using vim.pack" })
