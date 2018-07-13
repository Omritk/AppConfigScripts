#! /bin/bash
sudo apt-get  --assume-yes install openvas
sudo openvas-setup
sudo openvas-start
sudo /sbin/sysctl -w kernel.shmmax=134217728
sudo chown ec2-user /etc/sysctl.conf
sudo echo "kernel.shmmax = 134217729" >> /etc/sysctl.conf
sudo update-rc.d postgresql enable
sudo service postgresql start
sudo msfdb init