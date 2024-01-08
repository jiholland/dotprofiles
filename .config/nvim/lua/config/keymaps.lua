-- Remap keys.

vim.g.mapleader = " "       -- Set <Space> as leader key.
vim.g.maplocalleader = " "  -- Set <Space> as local leader key.

local map = vim.keymap.set

map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half page." })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half page." })
map("n", "<leader>fb", function() require("fzf-lua").buffers() end, { desc = "Live grep." })
map("n", "<leader>ff", function() require("fzf-lua").files() end, { desc = "Find files." })
map("n", "<leader>fg", function() require("fzf-lua").live_grep() end, { desc = "Live grep." })
map("n", "<leader>fk", function() require("fzf-lua").builtin() end, { desc = "List all fzf commands." })
map("n", "<leader>bc", vim.cmd.BufferLineCloseOthers, { desc = "Close all other buffers." })
map("n", "<leader>bd", vim.cmd.bdelete, { desc = "Close buffer." })
map("n", "<leader>bn", vim.cmd.BufferLineCycleNext, { desc = "Go to next buffer." })
map("n", "<leader>bp", vim.cmd.BufferLineCyclePrev, { desc = "Go to previous buffer." })
map("n", "<leader>bp", vim.cmd.BufferLinePick, { desc = "Pick buffer." })
map("n", "<leader>ll", function() require("lazy").profile() end, { desc = "Open lazy plugin manager." })
map("n", "<leader>lp", function() require("lazy").profile() end, { desc = "Show lazy profiling." })
map("n", "<leader>ls", function() require("lazy").sync() end, { desc = "Install, clean and update plugins." })
map("n", "<leader>u", function() vim.cmd.UndotreeToggle() vim.cmd.UndotreeFocus() end, { desc = "Toggle undotree panel." })
