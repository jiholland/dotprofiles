# Dotfiles
Dotfiles for bash, tmux and nvim.

## Installation
Install dotfiles with [Ansible](https://github.com/ansible/ansible):
```YAML
ansible-playbook playbook.yml
```
LSPs for nvim must be installed manually:
```YAML
pip install pyright
npm install --prefix ~/.local/npm @ansible/ansible-language-server
ln -s ~/.local/npm/node_modules/@ansible/ansible-language-server/bin/ansible-language-server ~/.local/bin
```

## Dependencies
- [iterm2](https://github.com/gnachman/iTerm2) (for true colors in macOS)
- [nvim](https://github.com/neovim/neovim) >= 0.12.0 (for native plugin manager)

☕️ Jørn Ivar
