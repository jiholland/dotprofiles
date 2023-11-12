# Dotfiles
Dotfiles for bash, neovim and tmux.

## Installation 
Install dotfiles with [Ansible](https://github.com/ansible/ansible):
```YAML
ansible-playbook playbook_deploy_dotfiles.yml
```

## Shell profiles
Shell profiles provide:
- colorization
- prompt with [git](https://github/com/git/git) branch
- history
- completions
- aliases

macOS dependencies:
- [iterm2](https://github.com/gnachman/iTerm2) (true colors).

## Neovim
Neovim is loaded with the following plugins:
- [lazy](https://github.com/folke/lazy.nvim)
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- [leap](https://github.com/ggandor/leap.nvim)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [nvim-surround](https://github.com/kylechui/nvim-surround)
- [undotree](https://github.com/mbbill/undotree)
- [comment](https://github.com/numToStr/Comment.nvim)
- [trouble](https://github.com/folke/trouble.nvim)
- [copilot](https://github.com/zbirenbaum/copilot.lua)
- [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [colorscheme](https://github.com/folke/tokyonight.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [ansible-vim](https://github.com/pearofducks/ansible-vim)

Note-to-self:
```YAML
Run install, clean and update on all plugins.
:Lazy sync

ctrl+c = Show Copilot suggestions in insert-mode.
ctrl+space = Accept Copilot suggestions in insert-mode.

ctrl+y = Confirm highlighted lsp.

space ff = Find files with fzf.
space fg = Live grep with fzf.
space fk = List all fzf commands.

space s c "' = change surround " to '.

space c c = Comment current line ('space c' in Visual mode).

Using git (fugitive).
:Git checkout -b fix

space u  = Toggle undo-tree panel.
ctrl+w h = Switch to undo-tree panel/window. 

space x x = Toggle trouble panel.

s te = Leap to word starting with "te" (press enter, S for upwards).

ctrl+u = Move up.
ctrl+d = Move down.
```
Dependencies:
- [git](https://github.com/git/git)
- [nodejs](https://github.com/nodejs)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [nerd-font](https://github.com/ryanoasis/nerd-fonts)
```YAML
brew install git nodejs ripgrep
```

## Tmux

Note-to-self:
```YAML
tmux new -s mysession
tmux attach -t mysession
tmux kill-session -t mysession

prefix = Ctrl+a

prefix esc = Enter copy mode. 

prefix d = Detach from session.

prefix % = Split pane horizontal.
prefix " = Split pane vertical.
prefix x = Close current pane.
prefix l = Switch pane (hjkl or arrows).

prefix c = Create window.
prefix n = Switch window.
prefix & = Close window.
prefix , = Rename window.
prefix - = Move window.

```
Copy-past might require xclip or xcopy.
```YAML
dnf install xclip
```
If path issues in MacOS - add something like this to ~/.config/tmux/tmux.conf
```YAML
set-option -g default-command "/opt/homebrew/bin/bash"
```

☕️ Jørn Ivar
