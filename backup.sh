termux-setup-storage
cd /data/data/com.termux/files
tar -zcf /sdcard/termux-backup.tar.gz home usr
echo "Your Termux backup was created successfully in your internal storage" | lolcat -as 50
echo "For restoring commands visit README.md" | lolcat -as 50
