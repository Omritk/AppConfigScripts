#! /bin/bash
#sudo chown ec2-user /etc/apt/sources.list
#sudo echo "deb https://http.kali.org/kali kali-rolling main non-free contrib" > /etc/apt/sources.list
#sudo apt-get update
#sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install openvas
#sudo openvas-setup
#sudo openvas-start
#sudo openvasmd --rebuild
#sudo openvasmd --user=admin --new-password=csadmin
sudo /sbin/sysctl -w kernel.shmmax=134217728
sudo chown ec2-user /etc/sysctl.conf
sudo echo "kernel.shmmax = 134217729" >> /etc/sysctl.conf
sudo update-rc.d postgresql enable
sudo service postgresql start
sudo msfdb init
sudo echo 'ec2-user:quali123' | chpasswd
sudo cd /etc/ssh
sudo wget https://raw.githubusercontent.com/qualidan/AppConfigScripts/master/ec2_sshd_config
sudo mv sshd_config sshd_config.bkp
sudo mv ec2_sshd_config sshd_config
sudo service ssh restart
