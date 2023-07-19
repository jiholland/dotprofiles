## dofiles
Minimalistic dotfiles for zsh, bash and nvim.<br>

Install profiles with [Ansible](https://github.com/ansible/ansible):
```YAML
ansible-playbook playbook_deploy_dotfiles.yml
```

Shell profiles provide:
- colorization
- prompt with git branch
- history
- completions
- [homebrew](https://github.com/homebrew/homebrew) (zsh)
- [pyenv](https://github.com/pyenv/pyenv) (zsh)
- aliases +++

Neovim is loaded with:
- [lazy](https://github.com/folke/lazy.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)🔭
- [telescope](https://github.com/nvim-telescope/telescope-file-browser.nvim)
- [copilot](https://github.com/zbirenbaum/copilot.lua)🤖
- [colorscheme](https://github.com/folke/tokyonight.nvim) and [lualine](https://github.com/nvim-lualine/lualine.nvim)🏙 
- [git](https://github.com/tpope/vim-fugitive)
- [highlighting](https://github.com/nvim-treesitter/nvim-treesitter)
- [undotree](https://github.com/mbbill/undotree)
- [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim) +++

Neovim how-to:
```YAML
ctrl+space = Accept Copilot suggestions.

space+ff = Find files with Telescope.
space+ff = Grep with Telescope.
space+fd = Find diagnostics with Telescope.
space+fh = Find help tags with Telescope.

space+fb = Manage files with Telescope file browser:
While in normal Telescope file browser mode (press esc after pressing space+fb):
  c = Create file.
  r = Rename file.
  m = Move file.
  d = Remove file.
  y = Copy file.

Using git while in normal mode:
:Git checkout -b fix
:Git status
:Git commit -am fix
:Git push origin fix

Language servesr for ansible, bash, terraform and python is enabled.
Add you required lsp's to ~/.config/nvim/lua/config/lsp.lua
```

☕️ Jørn Ivar
