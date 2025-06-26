-- ~/.config/nvim/lua/keymaps.lua

local map = vim.keymap.set

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("n", "<leader>do", vim.diagnostic.open_float, { desc = "Show diagnostics" })
map("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
map("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })


map("n", "<leader>bd", vim.cmd.bdelete, { desc = "Close current buffer" })
map("n", "<leader>bn", vim.cmd.bnext, { desc = "Go to next buffer" })
map("n", "<leader>bp", vim.cmd.bprevious, { desc = "Go to previous buffer" })

map("n", "<leader>fb", function() require("fzf-lua").buffers() end, { desc = "FZF: List buffers" })
map("n", "<leader>fd", function() require("fzf-lua").diagnostics_document() end, { desc = "FZF: Diagnostics" })
map("n", "<leader>ff", function() require("fzf-lua").files() end, { desc = "FZF: Find files" })
map("n", "<leader>fg", function() require("fzf-lua").live_grep() end, { desc = "FZF: Live grep" })

map("n", "<leader>hp", function() require("gitsigns").preview_hunk_inline() end, { desc = "Git: Preview hunk inline" })
map("n", "<leader>hs", function() require("gitsigns").stage_hunk() end, { desc = "Git: Stage hunk" })
map("n", "<leader>hu", function() require("gitsigns").undo_stage_hunk() end, { desc = "Git: Undo stage hunk" })

map("n", "<leader>u", function() vim.cmd.UndotreeToggle() vim.cmd.UndotreeFocus() end, { desc = "Toggle and focus Undotree" })
