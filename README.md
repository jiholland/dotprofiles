## dotprofiles
Minimalistic dotprofiles for zsh, bash and nvim.
- zprofile/zshrc is intended for macOS.
- init.lua should work fine for Ansible/yaml, Terraform and Python coding.

Shell profiles provide:
- colorization
- prompt with git branch
- history
- completions
- [homebrew](https://github.com/homebrew/homebrew) (zsh)
- [pyenv](https://github.com/pyenv/pyenv) (zsh)
- aliases +++

Install profiles with [Ansible](https://github.com/ansible/ansible):
```YAML
ansible-playbook .playbook_deploy_dotprofiles.yml
```
Jørn Ivar
