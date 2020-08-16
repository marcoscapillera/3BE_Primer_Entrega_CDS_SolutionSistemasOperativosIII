#!/bin/bash

# Credenciales
user="root"
password="admin"
host="localhost"
db_name="dbTriage"
tabla=""


# Especifica donde se va realizar el respaldo

date=$(date +"%d-%b-%Y")

echo "---------Backup de una tabla--------------"
echo ""
echo "Ingrese el nombre de la tabla"
read tabla
echo "espere..."
sleep 3


# Backup database dentro de archivo txt

mysql -u root -h localhost -p -e "select * from dbTriage.$tabla;" >  "/tmp/backup$date.txt"
sleep 3
sh logsBackup.sh "- BUCKUP DB: el $who realizo un backup de la tabla $tabla $db_name."
echo "Listo!"
sleep 3
./menu.sh
