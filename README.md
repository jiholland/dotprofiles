## dotprofiles
Minimalistic dotprofiles for zsh, bash and vim.
- zprofile/zshrc is intended for macOS.
- bash\_profile/bashrc is tested on RHEL 8.
- vimrc should work fine for Ansible/yaml and Python coding.

Shell profiles provide:
- colorization
- prompt with git branch
- history
- completions
- [homebrew](https://github.com/Homebrew) (zsh)
- [pyenv](https://github.com/pyenv/pyenv) (zsh)
- aliases +++

vimrc should be compatible with neovim.<br>
Add the following to ~/.config/nvim/init.vim to reuse ~/.vimrc in neovim:
```YAML
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
```

Jørn Ivar Holland
