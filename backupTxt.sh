#!/bin/bash

# Credenciales
user="root"
password="admin"
host="localhost"
db_name="dbTriage"
date=$(date +"%d-%b-%Y")
tabla=""


# Especifica donde se va realizar el respaldo

date=$(date +"%d-%b-%Y")

echo "---------Backup de una tabla--------------"
mysql -u root -h localhost -p -e "SHOW FULL TABLES FROM dbTriage;"
echo ""
echo "Ingrese el nombre de la tabla que desa realizar el backup"
read tabla
echo "espere..."
sleep 3


# Backup database dentro de archivo txt

mysql -u root -h localhost -p -e "select * from dbTriage.$tabla;" >  "/home/$USER/backup_tabla?$tabla?from$db_name$date.txt" && echo "Listo!" && echo "Se guardo en home/$USER"
sleep 3
sh logsBackup.sh "- BUCKUP DB: el $who realizo un backup de la tabla $tabla $db_name."
echo "Listo!"
sleep 3
./menu.sh
