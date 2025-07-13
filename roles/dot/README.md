dot
===

Role for installing dotprofiles.

Requirements
------------

None.

Role Variables
--------------

- dot_nvim_files
- dot_nvim_plugins
- dot_temp_dir
- dot_git_repo
- dot_git_version
- dot_git_accept_newhostkey
- dot_bash_profiles
- dot_nvim_files
- dot_nvim_plugins

Dependencies
------------

None.

Example Playbook
----------------
```yaml
---
- name: Install dotprofiles with Ansible.
  gather_facts: false
  hosts: localhost
  roles:
    - dot
```
License
-------

BSD

Author Information
------------------

Jorn Ivar Holland
