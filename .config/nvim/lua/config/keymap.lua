-- Keymap configuration.

vim.g.mapleader = " "       -- Set <Space> as leader key.
vim.g.maplocalleader = " "  -- Set <Space> as local leader key.

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half page." })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half page." })

vim.keymap.set("n", "<leader>e", vim.cmd.Explore, { desc = "Open file explorer window." })

vim.keymap.set("n", "<leader>l", "<cmd>Lazy sync<CR>", { desc = "Install, clean and update plugins." })
