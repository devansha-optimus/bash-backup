echo "Directory Name:"
read direct
backup_src="/$direct"

echo "Checking if file exsists..."

if [ -e $backup_src ]; then
	echo "File Exist!"

	if [ -e /backups/$direct.tar.gz ]; then
		echo "backup already exist"
	else
		backup_dst="/backups"

		backup_filen="$direct.tar.gz"

		sudo mkdir -p "$backup_dst"


		tar -czf "$backup_dst/$backup_filen" "$backup_src"
		if [ $? -eq 0 ]; then
			echo "Backup Successful"
		else 
			echo "Backup failed!"
		fi
	fi

else
	echo "File Does't exist!!"
fi
