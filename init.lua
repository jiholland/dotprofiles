-- ~/.config/nvim/init.lua

-- ==================== Key remap ====================

vim.g.mapleader = " "                          -- Set <Space> as leader key.
vim.g.maplocalleader = " "                     -- Set <Space> as local leader key.

vim.keymap.set("n", "<leader>do", vim.diagnostic.open_float, { desc = "Open floating diagnostic message." })
vim.keymap.set("n", "<leader>dd", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message." })
vim.keymap.set("n", "<leader>dD", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message." })

-- ==================== Options ======================

vim.opt.mouse = ""                             -- Disable mouse.
vim.opt.number = true                          -- Show line numbers.
vim.opt.wrap = false                           -- Disable line wrapping.
vim.opt.signcolumn = "yes"                     -- Always show sign column.
vim.opt.scrolloff = 5                          -- Minimal number of screen lines to keep above and below the cursor.
vim.opt.pumheight = 10                         -- Maximum number of items to show in popup menu.

vim.opt.expandtab = true                       -- Use spaces instead of tabs.
vim.opt.shiftwidth = 2                         -- Number of spaces to use for each step of (auto)indent.
vim.opt.softtabstop = 2                        -- Number of spaces that a <Tab> counts for while performing editing operations.
vim.opt.tabstop = 2                            -- Number of spaces that a <Tab> in the file counts for.

vim.opt.ignorecase = true                      -- Ignore case when searching.
vim.opt.smartcase = true                       -- Override "ignorecase" if the search pattern contains upper case characters.

vim.opt.swapfile = false                       -- Disable creation of swap files.
vim.opt.undofile = true                        -- Enable persistent undo.

-- ==================== Package Manager ==============

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)                  -- Add lazy.nvim to runtime path.

-- ==================== Plugins ======================

require("lazy").setup({
  "pearofducks/ansible-vim",                   -- Ansible syntax highlighting.
  "hashivim/vim-terraform",                    -- Terraform syntax highlighting.
  "tpope/vim-fugitive",                        -- Git wrapper.
  "lukas-reineke/indent-blankline.nvim",       -- Indentation guides.
  { "folke/which-key.nvim", opts = {} },       -- Keybindings helper.
  {
  "folke/tokyonight.nvim",                      -- Tokyonight theme.
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
	  vim.cmd[[colorscheme tokyonight-night]]
  end
  },
  {
    "nvim-lualine/lualine.nvim",               -- Lualine statusline.
    opts = {
      options = {
        icons_enabled = false,
        theme = "tokyonight",
        component_separators = "|",
        section_separators = "",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",         -- Treesitter syntax highlighting.
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects", },
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = { "bash", "python", "yaml" },
        highlight = { enable = true, }
      }
    end
  },
  {
    "mbbill/undotree",                         -- Undo history visualizer.
    config = function ()
      vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>", { desc = "Toggle undo tree." })
    end
  },
  {
    "zbirenbaum/copilot.lua",
    lazy = false,
    config = function()
      require("copilot").setup({
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<leader><Tab>",
          },
        },
        filetypes = {
          ["yaml"] = true,
        },
      })
    end
  },
  {
    "nvim-telescope/telescope.nvim",           -- Telescope fuzzy finder.
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files with Telescope."})
      vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find git files with Telescope."})
      vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = "Find diagnostics with Telescope."})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Find help tags with Telescope."})
    end
  },
  {
  "VonHeikemen/lsp-zero.nvim",                 -- LSP wrapper.
  branch = "v1.x",
  dependencies = {
    -- LSP Support.
    {"neovim/nvim-lspconfig"},
    {
      "williamboman/mason.nvim",
      build = function()
        pcall(vim.cmd, "MasonUpdate")
      end,
    },
    {"williamboman/mason-lspconfig.nvim"},
    -- Autocompletion.
    {"hrsh7th/nvim-cmp"},
    {"hrsh7th/cmp-nvim-lsp"},
    -- Snippets.
    {"L3MON4D3/LuaSnip"},
  },
},
}, {})

-- ==================== LSP ==========================

local lsp = require("lsp-zero").preset({
  name = "minimal",
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})
lsp.ensure_installed({
  "ansiblels",                                 -- Add LSP servers here.
  "bashls",
  "terraformls",
  "pyright",
})
lsp.setup()

-- ==================== OTHER ========================

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function() vim.highlight.on_yank() end,
  desc = "Briefly highlight yanked text"
})
