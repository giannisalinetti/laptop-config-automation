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

- base
- containers
- dev_tools
- dotfiles
- multimedia
- runtimes
- utilities
- virtualization

### Prerequisites
In order to access private repositories and sensitive data an SSH keypair 
should be used. The same keypair is used to access the dotfiles private 
repository in this scenario. The keypair must be created or copied 
separately.

### Provisioning
To begin the provisionin simply run the following command:
```
$ ansible-playbook main.yml -K'
```

### Maintainers
Gianni Salinetti <gbsalinetti@gmail.com>
