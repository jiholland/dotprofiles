dot
===

Role for installing dotprofiles.

Requirements
------------

None.

Role Variables
--------------

- dot_mode_dir
- dot_mode_file
- dot_vim_plug_url

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
