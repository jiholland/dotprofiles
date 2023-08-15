# Dotfiles
Dotfiles for zsh, bash, neovim and tmux.

## Installation 
Install dotfiles with [Ansible](https://github.com/ansible/ansible):
```YAML
ansible-playbook playbook_deploy_dotfiles.yml
```

## Shell profiles
Shell profiles provide:
- colorization
- prompt with git branch
- history
- completions
- [homebrew](https://github.com/Homebrew/brew) (zsh)
- [pyenv](https://github.com/pyenv/pyenv) (zsh)
- aliases

MacOS dependencies:
- [iterm2](https://github.com/gnachman/iTerm2)

## Neovim
Neovim is loaded with the following plugins:
- [lazy](https://github.com/folke/lazy.nvim)
- [copilot](https://github.com/zbirenbaum/copilot.lua)
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-surround](https://github.com/kylechui/nvim-surround)
- [undotree](https://github.com/mbbill/undotree)
- [comment](https://github.com/numToStr/Comment.nvim)
- [colorscheme](https://github.com/folke/tokyonight.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
- [ansible-vim](https://github.com/pearofducks/ansible-vim)
- [vim-terrafrom](https://github.com/hashivim/vim-terraform)

Note-to-self:
```YAML
ctrl+space = Accept Copilot suggestions in insert-mode.

space ff = Find files with fzf.
space fg = Live grep with fzf.
space fk = List all fzf commands.

space s c "' = change surround " to '.

space g d = View deleted change in git.
space g b = View last commit in git.

space c c = Comment current line ('space c' in Visual mode).

Using git
:Git checkout -b fix

space u  = Toggle undo-tree panel.
ctrl+w h = Switch to undo-tree panel/window. 
```
Dependencies:
- [nodejs](https://github.com/nodejs)
- [fzf](https://github.com/junegunn/fzf)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [nerd-font](https://github.com/ryanoasis/nerd-fonts)
```YAML
brew install fzf ripgrep nodejs
```

## Tmux
Tmux uses [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm).<br>
Press "prefix I" (capital i, as in Install) to fetch plugins after tmux.conf is sourced and you have entered a tmux session.<br>

Note-to-self:
```YAML
tmux new -s mysession
tmux attach -t mysession
tmux kill-session -t mysession

prefix = Ctrl+a

prefix d = Detach from session.

prefix % = Split pane horizontal.
prefix " = Split pane vertical.
prefix x = Close current pane.
prefix l = Switch pane (hjkl or arrows).

prefix c = Create window.
prefix n = Switch window.
prefix & = Close window.

prefix [ = Enter copy mode. 
Navigate like in nvim (scroll PgUp, PgDn, V or v to copy ++).

prefix Ctrl-s - Save session.
prefix Ctrl-r - Restore session.
```
Copy-past might require xclip or xcopy.
```YAML
dnf install xclip
```

☕️ Jørn Ivar
