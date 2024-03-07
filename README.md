# Dotfiles
Dotfiles for bash, nvim and tmux.

## Installation 
Install dotfiles with [Ansible](https://github.com/ansible/ansible):
```YAML
ansible-playbook playbook.yml
```
Dependencies:
- [iterm2](https://github.com/gnachman/iTerm2) (true colors in macOS)
- [nerd-font](https://github.com/ryanoasis/nerd-fonts) (icons)

## Shell profiles
Shell profiles provide:
- aliases
- colorization
- completions
- history
- prompt with [git](https://github.com/git/git) branch

## Nvim
Nvim is loaded with the following plugins:
- [ansible-vim](https://github.com/pearofducks/ansible-vim)
- [bufferline](https://github.com/akinsho/bufferline.nvim)
- [colorscheme](https://github.com/catppuccin/nvim)
- [comment](https://github.com/numToStr/Comment.nvim)
- [fzf-lua](https://github.com/ibhagwan/fzf-lua)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lazy](https://github.com/folke/lazy.nvim)
- [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [undotree](https://github.com/mbbill/undotree)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [which-key](https://github.com/folke/which-key.nvim)

Note-to-self:
```YAML
ctrl+y = Confirm highlighted lsp.
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
☕️ Jørn Ivar
