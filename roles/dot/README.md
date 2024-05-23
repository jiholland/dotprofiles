dot
===

Role for installing dotprofiles.

Requirements
------------

None.

Role Variables
--------------

None.

Dependencies
------------

None.

Example Playbook
----------------
```yaml
---
- name: Install dotprofiles with Ansible.
  connection: local
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
