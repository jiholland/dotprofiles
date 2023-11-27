-- Remap keys.Keymap configuration.

vim.g.mapleader = " "       -- Set <Space> as leader key.
vim.g.maplocalleader = " "  -- Set <Space> as local leader key.

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half page." })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half page." })

vim.keymap.set("n", "<leader>ff", function() require("fzf-lua").files() end, { desc = "Find files." })
vim.keymap.set("n", "<leader>fg", function() require("fzf-lua").live_grep() end, { desc = "Live grep." })
vim.keymap.set("n", "<leader>fk", function() require("fzf-lua").builtin() end, { desc = "List all fzf commands." })
vim.keymap.set("n", "<leader>ld", vim.cmd.bdelete, { desc = "Close buffer." })
vim.keymap.set("n", "<leader>lh", vim.cmd.BufferLineCyclePrev, { desc = "Go to previous buffer." })
vim.keymap.set("n", "<leader>ll", vim.cmd.BufferLineCycleNext, { desc = "Go to next buffer." })
vim.keymap.set("n", "<leader>lp", vim.cmd.BufferLinePick, { desc = "Pick buffer." })
vim.keymap.set("n", "<leader>s", function() require("lazy").sync() end, { desc = "Install, clean and update plugins." })
vim.keymap.set("n", "<leader>u", function() vim.cmd.UndotreeToggle() vim.cmd.UndotreeFocus() end, { desc = "Toggle undotree panel." })
vim.keymap.set("n", "<leader>x", function() require("trouble").toggle("workspace_diagnostics") end, { desc = "Toggle trouble panel." })
