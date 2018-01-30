#!/bin/bash

echo "=== running $(basename $0) ==="

# 备份原来的hosts
if [ ! -e "/etc/hosts.backup" ]; then
    sudo mv /etc/hosts /etc/hosts.backup
fi

cat hosts hosts-ext > hosts-all
sudo cp hosts-all /etc/hosts
rm hosts-all

#sudo cp hosts /etc/hosts
#sudo cat hosts-ext >> /etc/hosts
