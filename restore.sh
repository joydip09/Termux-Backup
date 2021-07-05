echo "For this proccess keep your 'termux-backup.tar.gz' file in main internal storage otherwise it won't work" | lolcat -as 5
apt update -y
apt upgrade -y
echo "Press Allow in next pop-up" | lolcat -as 10
termux-setup-storage
cd /data/data/com.termux/files
tar -zxf /sdcard/termux-backup.tar.gz --recursive-unlink --preserve-permissions
echo "If you got any error ignore them and restart your Termux" | lolcat -as 10
echo "Thanks For Using My Tool" | lolcat -as 10