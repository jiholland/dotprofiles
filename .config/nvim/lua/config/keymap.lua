-- Keymap configuration.

vim.g.mapleader = " "                              -- Set <Space> as leader key.
vim.g.maplocalleader = " "                         -- Set <Space> as local leader key.

vim.keymap.set("n", "<leader>do", vim.diagnostic.open_float, { desc = "Open floating diagnostic message." })
vim.keymap.set("n", "<leader>dd", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message." })
vim.keymap.set("n", "<leader>dD", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message." })
