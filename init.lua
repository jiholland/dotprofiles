-- ~/.config/nvim/init.lua

-- ==================== Key remap ====================

vim.g.mapleader = " "                              -- Set <Space> as leader key.
vim.g.maplocalleader = " "                         -- Set <Space> as local leader key.

vim.keymap.set("n", "<leader>do", vim.diagnostic.open_float, { desc = "Open floating diagnostic message." })
vim.keymap.set("n", "<leader>dd", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message." })
vim.keymap.set("n", "<leader>dD", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message." })

-- ==================== Options ======================

vim.opt.mouse = ""                                 -- Disable mouse.
vim.opt.number = true                              -- Show line numbers.
vim.opt.relativenumber = true                      -- Show relative line numbers.
vim.opt.wrap = false                               -- Disable line wrapping.
vim.opt.signcolumn = "yes"                         -- Always show sign column.
vim.opt.scrolloff = 5                              -- Minimal number of screen lines to keep above and below the cursor.
vim.opt.pumheight = 10                             -- Maximum number of items to show in popup menu.

vim.opt.expandtab = true                           -- Use spaces instead of tabs.
vim.opt.shiftwidth = 2                             -- Number of spaces to use for each step of (auto)indent.
vim.opt.softtabstop = 2                            -- Number of spaces that a <Tab> counts for while performing editing operations.
vim.opt.tabstop = 2                                -- Number of spaces that a <Tab> in the file counts for.

vim.opt.ignorecase = true                          -- Ignore case when searching.
vim.opt.smartcase = true                           -- Override "ignorecase" if the search pattern contains upper case characters.

vim.opt.swapfile = false                           -- Disable creation of swap files.
vim.opt.undofile = true                            -- Enable persistent undo.

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
vim.opt.rtp:prepend(lazypath)

-- ==================== Plugins ======================

require("lazy").setup({
  "pearofducks/ansible-vim",                       -- Ansible syntax highlighting.
  "hashivim/vim-terraform",                        -- Terraform syntax highlighting.
  "tpope/vim-fugitive",                            -- Git wrapper.
  "lukas-reineke/indent-blankline.nvim",           -- Indentation guides.
  {
    "folke/which-key.nvim",                        -- Keybindings helper.
    config = function()
      if not pcall(require, "which-key") then return end
      require("which-key").setup({
      })
    end,
  },
  {
  "folke/tokyonight.nvim",                         -- Colorscheme.
  lazy = false,
  priority = 1000,
  config = function()
    if not pcall(require, "tokyonight") then return end
    require("tokyonight").setup({
      style = "night",
    })
    vim.cmd[[colorscheme tokyonight]]
  end,
  },
  {
    "nvim-lualine/lualine.nvim",                   -- Lualine statusline.
    config = function()
      if not pcall(require, "lualine") then return end
      require("lualine").setup({
        options = {
          icons_enabled = false,
          theme = "tokyonight",
          component_separators = "|",
          section_separators = "",
        }
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",             -- Treesitter syntax highlighting.
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects", },
    build = ":TSUpdate",
    config = function()
      if not pcall(require, "nvim-treesitter") then return end
      require("nvim-treesitter.configs").setup {
        ensure_installed = { "bash", "python", "yaml" },
        highlight = { enable = true, }
      }
    end,
  },
  {
    "mbbill/undotree",                             -- Undo history visualizer.
    config = function()
      if not pcall(require, "undotree") then return end
      vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>", { desc = "Toggle undo tree." })
    end,
  },
  {
    "zbirenbaum/copilot.lua",                      -- Github Copilot integration.
    lazy = false,
    config = function()
      if not pcall(require, "copilot") then return end
      require("copilot").setup({
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<c-space>",
          },
        },
        filetypes = {
          ["yaml"] = true,
        },
      })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",               -- Telescope fuzzy finder.
    branch = "0.1.x",
    dependencies = {
      {"nvim-lua/plenary.nvim"},
      {"BurntSushi/ripgrep"},
      {"nvim-telescope/telescope-file-browser.nvim"},
    },
    config = function()
      if not pcall(require, "telescope") then return end
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files with Telescope." })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Grep files with Telescope." })
      vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = "Find diagnostics with Telescope." })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Find help tags with Telescope." })
      require("telescope").load_extension("file_browser")
      vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope file_browser<cr>", { noremap = true, desc = "Browse files with Telescope file_browser." })
    end
  },
  {
  "VonHeikemen/lsp-zero.nvim",                     -- LSP wrapper.
  branch = "v1.x",
  dependencies = {
    -- LSP Support.
    {"neovim/nvim-lspconfig"},
    {
      "williamboman/mason.nvim",
      build = function()
        if not pcall(require, "mason") then return end
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

if pcall(require, "lsp-zero") then
  local lsp = require("lsp-zero").preset({
    name = "minimal",
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = false,
  })
  lsp.ensure_installed({
    "ansiblels",                                   -- Add LSP servers here.
    "bashls",
    "terraformls",
    "pyright",
  })
  lsp.setup()
end

-- ==================== OTHER ========================

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function() vim.highlight.on_yank() end,
  desc = "Briefly highlight yanked text"
})
