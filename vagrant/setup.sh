#!/usr/bin/bash

# Update system
apt update 
apt -y upgrade

# Unscrew SSH
sed -i 's/KbdInteractiveAuthentication no/KbdInteractiveAuthentication yes/g' /etc/ssh/sshd_config
echo 'PasswordAuthentication yes' > /etc/ssh/sshd_config.d/99-custom-settings.conf
systemctl restart ssh.service
