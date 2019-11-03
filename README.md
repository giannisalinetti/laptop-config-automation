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
$ ansible-playbook main.yml -K --vault-id @prompt'
```

The `-K` option forces the user to insert the password for the privilege 
escalation. If the user is configured to run sudo without password this option
can be removed.

The `--vault-id @prompt` option is used to decrypt the private key file 
necessary to download the dotfiles, stored in a private repository.

To reuse this repository for you personal laptop get rid of the 
`roles/dotfiles/files/id_rsa` and roles/dotfiles/files/id_rsa.pub` files and 
replace them with yours. **Do not forget to encrypt the private key file with
ansible-vault**!

### Maintainers
Gianni Salinetti <gbsalinetti@gmail.com>
