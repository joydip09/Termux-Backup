#!bin/bash

echo "Installing Requirements" | lolcat -as 10
apt update -y
apt upgrade -y
apt install ruby -y
gem install lolcat
echo "Press allow in next pop-up" | lolcat -as 5
termux-setup-storage

if [ -a /sdcard/termux-backup.tar.gz ];
then
	echo "backup exists"
else
	echo "There is no backup in your device. Do u wanna make one?(y/n): "
	read cnfrm
fi

case "$cnfrm" in
	[yY] | [yY][eE][sS])
		echo "Backup is being created" | lolcat -as 10
		cd /data/data/com.termux/files
		tar -zcf /sdcard/termux-backup.tar.gz home usr
		echo "Your Termux backup was created successfully in your internal storage" | lolcat -as 50
		echo "For restoring commands visit README.md" | lolcat -as 50
		echo "Thanks for using my tool" | lolcat -as 10
		;;
	[nN] | [nN][oO])
		echo "Backup creating proccess is terminated" | lolcat -as 10
		;;
	*)
		echo "Invalid option"
		;;
esac
