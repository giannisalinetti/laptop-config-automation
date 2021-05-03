# Laptop Config Automation

This is a personal colletion of roles to automate the configuration of my 
personal laptop. 
All the roles are based on the Fedora distribution.

### Instructions

Configure the favorite package list in the `host_vars/localhost/vars.yml' 
file.
This playbook is intented to be executed on the local machine, thus the 
`ansible_connection=local` variable is set in the inventory.

All the configurations are managed by dedicated roles, organized by type:

- containers
- dev_tools
- dotfiles
- multimedia
- runtimes
- utilities
- virtualization

To run the provisioning:

```
$ ansible-playbook main.yml'
```

### Maintainers
Gianni Salinetti <gbsalinetti@gmail.com>
