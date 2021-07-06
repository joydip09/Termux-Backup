#!bin/bash

apt update -y
apt upgrade -y
apt install ruby -y
gem install lolcat
echo "Press Allow in next pop-up" | lolcat -as 10
termux-setup-storage
rm -rf Termux-Backup
cd
git clone https://github.com/C-Joydip/Termux-Backup
echo "Termux-Backup tool is successfully updated" | lolcat -as 5
