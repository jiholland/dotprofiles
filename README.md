## Dotfiles
Minimalistic dotfiles for zsh, bash, tmux and nvim.<br>

Installation 
------------
Install dotfiles with [Ansible](https://github.com/ansible/ansible):
```YAML
ansible-playbook playbook_deploy_dotfiles.yml
```

Shell profiles
--------------
Shell profiles provide:
- colorization
- prompt with git branch
- history
- completions
- [homebrew](https://github.com/homebrew/homebrew) (zsh)
- [pyenv](https://github.com/pyenv/pyenv) (zsh)
- aliases +++

Neovim
------
Neovim is loaded the following plugins:
- [lazy](https://github.com/folke/lazy.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [telescope-file-browser](https://github.com/nvim-telescope/telescope-file-browser.nvim)
- [copilot](https://github.com/zbirenbaum/copilot.lua)
- [colorscheme](https://github.com/folke/tokyonight.nvim) and [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [git](https://github.com/tpope/vim-fugitive)
- [highlighting](https://github.com/nvim-treesitter/nvim-treesitter)
- [undotree](https://github.com/mbbill/undotree)
- [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim) +++

Neovim cheat-cheat:
```YAML
ctrl+space = Accept Copilot suggestions.

space ff = Find files with Telescope.
space fg = Grep with Telescope (requires https://github.com/BurntSushi/ripgrep).
space fd = Find diagnostics with Telescope.
space fh = Find help tags with Telescope.

space fb = Manage files with Telescope-file-browser.
While in normal Telescope-file-browser mode (press esc after pressing space fb).
  c = Create file.
  r = Rename file.
  m = Move file.
  d = Remove file.
  y = Copy file.

Using git while in normal mode.
:Git checkout -b fix
:Git commit -am fix
:Git push origin fix

Language servers for ansible, bash, terraform and python is enabled.
Add additional lsp's to ~/.config/nvim/lua/config/lsp.lua
```

Tmux
----
Tmux uses [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm).<br>
Press "ctrl+a I" (capital i, as in Install) to fetch plugins after tmux.conf is sourced and you have entered a tmux session.<br>

Tmux cheat-cheat: 
```YAML
tmux new -s mysession
tmux attach -t mysession
tmux kill-session -t mysession

ctrl+a d = Detach from session.

ctrl+a % = Split pane horizontal.
ctrl+a " = Split pane vertical.
ctrl+a x = Close current panel.
ctrl+a l = Switch pane (hjkl or arrows).

ctrl+a c = Create window.
ctrl+a n = Switch window.
ctrl+a & = Close window.

ctrl+a [ = Enter copy mode. 
Navigate like in nvim (scroll PgUp, PgDn, V or v to copy ++).
```

☕️ Jørn Ivar
