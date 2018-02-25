#!/bin/sh

createUser() {
    useradd user
    SSH_USERPASS=pass
    echo -e "$SSH_USERPASS\n$SSH_USERPASS" | (passwd --stdin user)
}

mkdir /var/run/sshd
ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 

createUser
