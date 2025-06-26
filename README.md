# Dotfiles
Dotfiles for bash, tmux and nvim.

## Installation
Install dotfiles with [Ansible](https://github.com/ansible/ansible):
```YAML
ansible-playbook playbook.yml
```
Dependencies:
- [iterm2](https://github.com/gnachman/iTerm2) (for true colors in macOS)
- [nerd-font](https://github.com/ryanoasis/nerd-fonts) (for icons)
- [nvim](https://github.com/neovim/neovim) >= 0.11.0 (for native LSP setup)
- [ansible lsp](https://github.com/ansible/vscode-ansible/tree/main/packages/ansible-language-server) and
  [python lsp](https://github.com/microsoft/pyright/tree/main/packages/pyright) (for autocompletion, linting, etc. in nvim - see comments ~/.config/nvim/lsp/* for installation)

☕️ Jørn Ivar
