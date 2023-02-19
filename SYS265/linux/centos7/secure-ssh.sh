#!/bin/bash

useradd -m -d /home/sys265 -s /bin/bash jack-ssh
mkdir /home/jack-ssh/.ssh
cp ~/SYS265-SYSadmin/SYS265/linux/public-keys/id_rsa.pub ~/jack-ssh/.ssh/authorized_keys
chmod 700 ~/jack-ssh/.ssh
chmod 600 ~/jack-ssh/.ssh/authorized_keys
chown -R sys265:sys265 ~/jack-ssh/.ssh
