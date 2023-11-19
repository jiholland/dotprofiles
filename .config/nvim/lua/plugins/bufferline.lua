-- Bufferline

return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = {
      { 'nvim-tree/nvim-web-devicons' }
    },
    config = function()
      require("bufferline").setup({})
      vim.opt.termguicolors = true
    end,
  }
}
