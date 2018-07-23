#! /bin/bash
#sudo chown ec2-user /etc/apt/sources.list
#sudo echo "deb https://http.kali.org/kali kali-rolling main non-free contrib" > /etc/apt/sources.list
#sudo apt-get update
#sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install openvas
#sudo openvas-setup
#sudo openvas-start
#sudo openvasmd --rebuild
#sudo openvasmd --user=admin --new-password=csadmin

#Metasploit related config
sudo /sbin/sysctl -w kernel.shmmax=134217728
sudo chown ec2-user /etc/sysctl.conf
sudo echo "kernel.shmmax = 134217729" >> /etc/sysctl.conf
sudo update-rc.d postgresql enable
sudo service postgresql start
sudo msfdb init

#Enabligh SSH connection using password
sudo cd /etc/ssh
sudo wget https://raw.githubusercontent.com/qualidan/AppConfigScripts/master/ec2-user_chpasswd.sh
sudo chmod +x ec2-user_chpasswd.sh
sudo ./ec2-user_chpasswd.sh
sudo wget https://raw.githubusercontent.com/qualidan/AppConfigScripts/master/ec2_sshd_config
sudo mv /etc/ssh/sshd_config /etc/ssh/sshd_config.bkp
sudo mv /etc/ssh/ec2_sshd_config /etc/ssh/sshd_config
sudo service ssh restart
