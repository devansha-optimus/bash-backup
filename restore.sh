restore_src="/backups"

echo "Directory name to restore:"

read rest


restore_filen="$rest.tar.gz"

if [ -e /backups/$restore_filen ]; then
	tar -xzf "$restore_src/$restore_filen"

	if [ $? -eq 0 ]; then
		echo "Restore Successful"
		rm -r /backups/$restore_filen
	else
		echo "Restore Failed!"
	
	fi

else
	echo "File doesn't exist!!"
fi

