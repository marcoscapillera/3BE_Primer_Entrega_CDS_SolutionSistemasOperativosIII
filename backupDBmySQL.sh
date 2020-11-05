#!/bin/bash

# Credenciales
user="root"
password="admin"
host="localhost"
db_name="cds"

# Especificar donde se va realizar el respaldo
backup_path="/home/$USER"
date=$(date +"%d-%b-%Y")


echo "Se está realizando un buckup de la base de datos $db_name en este momento"
echo "en proceso ..."

sleep 3

# Dump database dentro de SQL archivo
mysqldump --user=$user --password=$password --host=$host $db_name > $backup_path/$db_name-$date.sql && echo "Listo!" && echo "Se guardo en $backup_path"


#mysqldump --user=marcos --password=admin --host=localhost dbTriage > /home/_backup/mysql/dbTriageb.sql
sh logsBackup.sh "- BUCKUP DB: El administrador $admin realizo buckup  de la base de datos $db_name."
sleep 3

read -p "Press enter para volver al menu" 
./menuPpal.sh


#Crontab para realizar el buckup todos los dias a las 3:00 AM. 
#
#sudo crontab -e
#MAILTO=cdssolutions@xxx.com<br></br> // opcional 
#00 3 * * * sh ~/backupDBmySQL.sh
#
#
#
