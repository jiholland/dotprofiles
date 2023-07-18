## dotprofiles
Minimalistic dotfiles for zsh, bash and nvim.

Shell profiles provide:
- colorization
- prompt with git branch
- history
- completions
- [homebrew](https://github.com/homebrew/homebrew) (zsh)
- [pyenv](https://github.com/pyenv/pyenv) (zsh)
- aliases +++

Neovim is loaded with:
- [telescope](https://github.com/nvim-telescope/telescope.nvim)🔭
- [copilot](https://github.com/zbirenbaum/copilot.lua)🤖
- [lsp](https://github.com/VonHeikemen/lsp-zero.nvim) ++

Install profiles with [Ansible](https://github.com/ansible/ansible):
```YAML
ansible-playbook playbook_deploy_dotfiles.yml
```
Jørn Ivar
