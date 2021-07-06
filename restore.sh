#!bin/bash

apt update -y
apt upgrade -y
apt install ruby -y
gem install lolcat
echo "Press Allow in next pop-up" | lolcat -as 10
termux-setup-storage

echo "For this proccess keep your 'termux-backup.tar.gz' file in main internal storage otherwise it won't work" | lolcat -as 10

if [ -a /sdcard/termux-backup.tar.gz ];
then
	echo "There is a backup in your device. Do u wanna restore?(y/n): "
	read cnfrm1
else
	echo "There is no backup in your device."
fi

if [ "$cnfrm1" = "y" ];
then
	echo "Backup is being restored" | lolcat -as 10
	cd /data/data/com.termux/files
	tar -zxf /sdcard/termux-backup.tar.gz --recursive-unlink --preserve-permissions
	echo "If you got any error ignore them and restart your Termux" | lolcat -as 10
	echo "Thanks For Using My Tool" | lolcat -as 10
else
	echo "Restoring creating proccess is terminated" | lolcat -as 10
fi
