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
- [bufferline](https://github.com/akinsho/bufferline.nvim)
- [colorscheme](https://github.com/folke/tokyonight.nvim)
- [comment](https://github.com/numToStr/Comment.nvim)
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lazy](https://github.com/folke/lazy.nvim)
- [leap](https://github.com/ggandor/leap.nvim)
- [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [trouble](https://github.com/folke/trouble.nvim)
- [undotree](https://github.com/jiaoshijie/undotree)
- [which-key](https://github.com/folke/which-key.nvim)

Note-to-self:
```YAML
space s = Run install, clean and update on all plugins.

ctrl+y = Confirm highlighted lsp.

space ff = Find files with fzf.
space fg = Live grep with fzf.
space fk = List all fzf commands.

space c c = Comment current line ('space c' in Visual mode).

space u  = Toggle undo-tree panel.
ctrl+w h = Switch to undo-tree panel/window. 

space x = Toggle trouble panel.

s te = Leap to word starting with "te" (press enter, S for upwards).

ctrl+u = Move up.
ctrl+d = Move down.

:sort u = Sort lines.
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
