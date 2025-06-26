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
