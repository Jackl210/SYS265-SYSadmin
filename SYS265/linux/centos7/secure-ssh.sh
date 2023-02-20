#!/bin/bash

echo "Enter New Username"

read first_name


USER=first_name




sudo useradd -m -d ${USER} /home/${USER} -s /bin/bash ${USER};
sudo mkdir /home/${USER}/.ssh;
sudo cp ~/SYS265-SYSadmin/SYS265/linux/public-keys/id_rsa.pub /home/${USER}/.ssh/authorized_keys;
sudo chmod 700 /home/${USER}/.ssh;
sudo chmod 600 /home/${USER}/.ssh/authorized_keys;
sudo chown -R ${USER}:${USER} /home/${USER}/.ssh;
