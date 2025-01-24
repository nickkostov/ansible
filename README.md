# ansible
Repository for ansible playbooks and roles







# Ops:

```bash
ansible-playbook -u administrator -i inventories/ubuntu-amd64/hosts.yml playbooks/ubuntu-amd64.docker.ansible.yml --extra-vars='{ "hosts_group":"ubuntu-amd64" }'
```

#

- Add this to visudo (botom of ifile ) `administrator ALL=(ALL) NOPASSWD: ALL`


## Ubuntu:

### Prerequisites:

1. A machine from which you will execute the playbooks/roles. Preferebly a Linux based one.
2. An SSH Key.
3. Authorize the key and copy the id.
- You need to copy the ssh id. `ssh-copy-id user@server`
4. The server must be cofigured to accept passwordless sudo: `your_user_name ALL=(ALL) NOPASSWD: ALL`
5. Make sure you are using Ubuntu as your target. Check it with `cat /etc/os-release`

### Repository structure: (might get outtdated really fast)
```
├── README.md
├── ansible.ubuntu.cfg (default ansible cfg for ubuntu roles cfg only)
├── inventories  (inventories -i )
│   └── ubuntu-amd64
│       ├── group_vars
│       │   └── all.yml (ansible variables)
│       └── hosts.yml (hosts actual inventory)
├── playbooks
│   └── ubuntu-amd64.docker.ansible.yml (playbook which you trigger)
└── roles
    ├── debian
    ├── fedora
    └── ubuntu
        ├── apache
        │   └── tasks
        ├── docker (only role i have written, it has been defined in the config file)
        │   └── tasks
        │       └── main.yml
        └── nginx
            └── tasks
```

1. You will have to export the `ansible.cfg`, in order to allow the repository structure to be valid:

```bash
export ANSIBLE_CONFIG=ansible.ubuntu.cfg
```


2. 

3. 

```bash

ansible-playbook -u administrator \
-i inventories/ubuntu-amd64/hosts.yml \
playbooks/ubuntu-amd64.docker.ansible.yml \
--extra-vars='{ "hosts_group":"ubuntu-amd64-group" }'
```