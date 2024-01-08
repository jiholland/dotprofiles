# Dotfiles
Dotfiles for bash, neovim and tmux.

## Installation 
Install dotfiles with [Ansible](https://github.com/ansible/ansible):
```YAML
ansible-playbook playbook.yml
```

## Shell profiles
Shell profiles provide:
- colorization
- prompt with [git](https://github.com/git/git) branch
- history
- completions
- aliases

macOS dependencies:
- [iterm2](https://github.com/gnachman/iTerm2) (true colors).

## Neovim
Neovim is loaded with the following plugins:
- [ansible-vim](https://github.com/pearofducks/ansible-vim)
- [bufferline](https://github.com/akinsho/bufferline.nvim)
- [colorscheme](https://github.com/catppuccin/nvim)
- [comment](https://github.com/numToStr/Comment.nvim)
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lazy](https://github.com/folke/lazy.nvim)
- [leap](https://github.com/ggandor/leap.nvim)
- [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [undotree](https://github.com/mbbill/undotree)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-repeat](https://github.com/tpope/vim-repeat)
- [which-key](https://github.com/folke/which-key.nvim)

Note-to-self:
```YAML
ctrl+d   = Move down.
ctrl+u   = Move up.
ctrl+w h = Switch panel/window. 
ctrl+y   = Confirm highlighted lsp.

:sort u  = Sort lines.

ste      = Leap to word starting with "te" (press enter, S for upwards).
.        = Repeat native/plugin command.
```
Dependencies:
- [git](https://github.com/git/git)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [nerd-font](https://github.com/ryanoasis/nerd-fonts)
```YAML
brew install git ripgrep
```

## Tmux

Note-to-self:
```YAML
tmux attach -t mysession
tmux kill-session -t mysession
tmux new -s mysession

prefix     = Ctrl+a
prefix d   = Detach from session.
prefix esc = Enter copy mode. 

prefix " = Split pane vertical.
prefix % = Split pane horizontal.
prefix l = Switch pane (hjkl or arrows).
prefix x = Close current pane.

prefix & = Close window.
prefix , = Rename window.
prefix - = Move window.
prefix c = Create window.
prefix n = Next window.
prefix p = Previous window.
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
