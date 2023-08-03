## Dotfiles
Minimalistic dotfiles for zsh, bash, neovim and tmux.<br>

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
- [homebrew](https://github.com/Homebrew/brew) (zsh)
- [pyenv](https://github.com/pyenv/pyenv) (zsh)
- aliases +++

Neovim
------
Neovim is loaded the following plugins:
- [lazy](https://github.com/folke/lazy.nvim)
- [copilot](https://github.com/zbirenbaum/copilot.lua)
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [undotree](https://github.com/mbbill/undotree)
- [comment](https://github.com/numToStr/Comment.nvim)
- [tokyonight colorscheme](https://github.com/folke/tokyonight.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
- [ansible-vim](https://github.com/pearofducks/ansible-vim)
- [vim-terrafrom](https://github.com/hashivim/vim-terraform)

Cheat-cheat:
```YAML
ctrl+space = Accept Copilot suggestions.

space ff = Find files with fzf.
space fg = Live grep with fzf.
space fk = List all fzf commands.

space c c = Comment current line ('space c' in Visual mode).

Using git (normal mode)
:Git checkout -b fix
:Git commit -am fix
:Git push origin fix

space u  = Toggle undo-tree panel.
ctrl+w h = Switch to undo-tree panel/window. 

Language servers for ansible, bash, terraform and python is enabled.
Add additional lsp's to ~/.config/nvim/lua/config/lsp.lua
```
Dependencies: [nerd-font](https://github.com/ryanoasis/nerd-fonts), [ripgrep](https://github.com/BurntSushi/ripgrep), [fzf](https://github.com/junegunn/fzf), [fd](https://github.com/sharkdp/fd), [bat](https://github.com/sharkdp/bat)

Tmux
----
Tmux uses [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm).<br>
Press "ctrl+a I" (capital i, as in Install) to fetch plugins after tmux.conf is sourced and you have entered a tmux session.<br>

Cheat-cheat: 
```YAML
tmux new -s mysession
tmux attach -t mysession
tmux kill-session -t mysession

ctrl+a d = Detach from session.

ctrl+a % = Split pane horizontal.
ctrl+a " = Split pane vertical.
ctrl+a x = Close current pane.
ctrl+a l = Switch pane (hjkl or arrows).

ctrl+a c = Create window.
ctrl+a n = Switch window.
ctrl+a & = Close window.

ctrl+a [ = Enter copy mode. 
Navigate like in nvim (scroll PgUp, PgDn, V or v to copy ++).
```

☕️ Jørn Ivar
