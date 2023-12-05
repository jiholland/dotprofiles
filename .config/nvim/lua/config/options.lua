-- Set options.

local opt = vim.opt

opt.clipboard = "unnamedplus"  -- Sync with system clipboard.
opt.confirm = true             -- Confirm to save changes before exiting modified buffer.
opt.cursorline = true          -- Enable hightlight of the current line.
opt.expandtab = true           -- Use spaces instead of tabs.
opt.ignorecase = true          -- Ignore case when searching.
opt.mouse = ""                 -- Disable mouse.
opt.pumblend = 10              -- Popup blend.
opt.pumheight = 10             -- Maximum number of items to show in popup menu.
opt.relativenumber = true      -- Show relative line numbers.
opt.scrolloff = 5              -- Minimal number of screen lines to keep above and below the cursor.
opt.shiftwidth = 2             -- Number of spaces to use for each step of (auto)indent.
opt.shortmess:append "sI"      -- Disable nvim intro.
opt.showmode = false           -- Hide mode indicator.
opt.signcolumn = "yes"         -- Always show sign column.
opt.smartcase = true           -- Override "ignorecase" if the search pattern contains upper case characters.
opt.softtabstop = 2            -- Number of spaces that a <Tab> counts for while performing editing operations.
opt.swapfile = false           -- Disable creation of swap files.
opt.tabstop = 2                -- Number of spaces that a <Tab> in the file counts for.
opt.termguicolors = true       -- Enables 24-bit RGB.
opt.timeoutlen = 300           -- Time in milliseconds to wait for a mapped sequence to complete.
opt.undofile = true            -- Enable persistent undo.
opt.updatetime = 200           -- Save swap file and trigger CursorHold.
opt.wrap = false               -- Disable line wrapping.
