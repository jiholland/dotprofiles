-- Remap keys.

local map = vim.keymap.set

map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half page." })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half page." })
map("n", "<leader>bd", vim.cmd.bdelete, { desc = "Close buffer." })
map("n", "<leader>bn", vim.cmd.bnext, { desc = "Go to next buffer." })
map("n", "<leader>bp", vim.cmd.bprevious, { desc = "Go to previous buffer." })
map("n", "<leader>fb", function() require("fzf-lua").buffers() end, { desc = "Find buffers." })
map("n", "<leader>ff", function() require("fzf-lua").files() end, { desc = "Find files." })
map("n", "<leader>fg", function() require("fzf-lua").live_grep() end, { desc = "Live grep." })
map("n", "<leader>hp", function() require("gitsigns").preview_hunk_inline() end, { desc = "Preview git hunks." })
map("n", "<leader>hs", function() require("gitsigns").stage_hunk() end, { desc = "Stage git hunks." })
map("n", "<leader>hu", function() require("gitsigns").undo_stage_hunk() end, { desc = "Undo git hunks." })
