-- Remap keys.

local map = vim.keymap.set

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
map("n", "<leader>bd", vim.cmd.bdelete)
map("n", "<leader>bn", vim.cmd.bnext)
map("n", "<leader>bp", vim.cmd.bprevious)
map("n", "<leader>fb", function() require("fzf-lua").buffers() end)
map("n", "<leader>ff", function() require("fzf-lua").files() end)
map("n", "<leader>fg", function() require("fzf-lua").live_grep() end)
map("n", "<leader>hp", function() require("gitsigns").preview_hunk_inline() end)
map("n", "<leader>hs", function() require("gitsigns").stage_hunk() end)
map("n", "<leader>hu", function() require("gitsigns").undo_stage_hunk() end)
map("n", "<leader>u", function() vim.cmd.UndotreeToggle() vim.cmd.UndotreeFocus() end)
