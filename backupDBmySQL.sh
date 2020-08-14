#!/bin/bash

# Credenciales
user=""
password=""
host=""
db_name=""

# Especificar donde se va realizar el respaldo
backup_path="~/_backup/mysql"
date=$(date +"%d-%b-%Y")


echo "Se está realizando un buckup de la base de datos $db_name en este momento"
echo "en proceso ..."
sleep 3

# Dump database dentro de SQL archivo
mysqldump --user=$user --password=$password --host=$host $db_name > $backup_path/$db_name-$date.sql

echo "Listo!"

sleep 3
./menu.sh


#Cronttab para realizar el buckup todos los dias a las 3:00 AM. 
#
#sudo crontab -e
#MAILTO=cdssolutions@xxx.com<br></br>
#00 3 * * * sh /backups/backupDBmySQL.sh
#
#
#
